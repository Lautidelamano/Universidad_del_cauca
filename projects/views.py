from django.shortcuts import render, redirect
import json
from .models import Compilado, Estudiante, Docente
from django.contrib.auth.models import User
from django.contrib.auth import login as auth_login, logout as auth_logout
from django.http import HttpResponse as httpResponse
from django.contrib.auth import authenticate
from django.contrib import messages


def signup (request):
    if request.method == 'GET':
        return render(request, 'signup.html')
    else:
        if request.method == 'POST':
            if request.POST['password'] == request.POST['confirm_password']:
                try:
                    user = User.objects.create_user(
                        username=request.POST['username'],
                        password=request.POST['password']
                    )
                    user.save()
                    return render(request, 'signup.html', {'message': 'Usuario creado con exito', 'message_type': 'success'})
                except:
                    return render(request, 'signup.html', {'message': 'Usuario ya existe', 'message_type': 'danger'})
            else:
                return render(request, 'signup.html', {'message': 'Contraseñas no coinciden', 'message_type': 'danger'})

def inicio_sesion (request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            auth_login(request, user)
            return redirect('home')
        else:
            return render(request, 'login.html', {'message': 'Credenciales inválidas', 'message_type': 'danger'})
    else:
        return render(request, 'login.html')

def cierre_sesion (request):
    auth_logout(request)
    return redirect('login')

def home(request):
    compilados = Compilado.objects.select_related('estudiante', 'director').all()
    context = {
        'compilados': compilados
    }
    return render(request, 'home.html', context)

def docentes(request):
    docentes = Docente.objects.all()
    context = {
        'docentes': docentes
    }
    return render(request, 'docentes.html', context)

def agregar_docente(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre')
        departamento = request.POST.get('departamento')
        facultad = request.POST.get('facultad')
        email = request.POST.get('email')

        docente = Docente(nombre=nombre, departamento=departamento, facultad=facultad, email=email)
        docente.save()
        messages.success(request, 'Docente agregado con éxito.')
        return redirect('docentes')
    else:
        messages.error(request, 'Método no permitido.')
        return redirect('docentes')
    
def eliminar_docente(request, docente_id):
    try:
        docente = Docente.objects.get(id=docente_id)
        docente.delete()
        messages.success(request, 'Docente eliminado con éxito.')
    except Docente.DoesNotExist:
        messages.error(request, 'El docente no existe.')
    return redirect('docentes')

def modificar_docente(request, docente_id):
    try:
        docente = Docente.objects.get(id=docente_id)
        if request.method == 'POST':
            docente.nombre = request.POST.get('nombre')
            docente.departamento = request.POST.get('departamento')
            docente.facultad = request.POST.get('facultad')
            docente.email = request.POST.get('email')
            docente.save()
            messages.success(request, 'Docente modificado con éxito.')
            return redirect('docentes')
        else:
            context = {'docente': docente}
            return render(request, 'modificar_docente.html', context)
    except Docente.DoesNotExist:
        messages.error(request, 'El docente no existe.')
        return redirect('docentes')