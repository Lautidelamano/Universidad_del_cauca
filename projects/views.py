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
    
def estudiantes(request):
    estudiantes = Estudiante.objects.all()
    context = {
        'estudiantes': estudiantes
    }
    return render(request, 'estudiantes.html', context)

def agregar_estudiante(request):
    if request.method == 'POST':
        legajo = request.POST.get('legajo')
        tipo_identificacion = request.POST.get('tipo_identificacion')
        identificacion = request.POST.get('identificacion')
        primer_apellido = request.POST.get('primer_apellido')
        segundo_apellido = request.POST.get('segundo_apellido')
        primer_nombre = request.POST.get('primer_nombre')
        segundo_nombre = request.POST.get('segundo_nombre')
        correo_institucional = request.POST.get('correo_institucional')
        telefono = request.POST.get('telefono')
        celular = request.POST.get('celular')
        estudiante = request.POST.get('estudiante')
        facultad = request.POST.get('facultad')
        programa = request.POST.get('programa')
        regionalizacion = request.POST.get('regionalizacion')
        sede = request.POST.get('sede')
        jornada = request.POST.get('jornada')
        periodo = request.POST.get('periodo')

        estudiante_obj = Estudiante(
            legajo=legajo,
            tipo_identificacion=tipo_identificacion,
            identificacion=identificacion,
            primer_apellido=primer_apellido,
            segundo_apellido=segundo_apellido,
            primer_nombre=primer_nombre,
            segundo_nombre=segundo_nombre,
            correo_institucional=correo_institucional,
            telefono=telefono,
            celular=celular,
            estudiante=estudiante,
            facultad=facultad,
            programa=programa,
            regionalizacion=regionalizacion,
            sede=sede,
            jornada=jornada,
            periodo=periodo
        )
        estudiante_obj.save()
        messages.success(request, 'Estudiante agregado con éxito.')
        return redirect('estudiantes')
    else:
        messages.error(request, 'Método no permitido.')
        return redirect('estudiantes')
    
def eliminar_estudiante(request, estudiante_legajo):
    try:
        estudiante = Estudiante.objects.get(legajo=estudiante_legajo)
        estudiante.delete()
        messages.success(request, 'Estudiante eliminado con éxito.')
    except Estudiante.DoesNotExist:
        messages.error(request, 'El estudiante no existe.')
    return redirect('estudiantes')

def modificar_estudiante(request, estudiante_legajo):
    try:
        estudiante = Estudiante.objects.get(legajo=estudiante_legajo)
        if request.method == 'POST':
            estudiante.tipo_identificacion = request.POST.get('tipo_identificacion')
            estudiante.identificacion = request.POST.get('identificacion')
            estudiante.primer_apellido = request.POST.get('primer_apellido')
            estudiante.segundo_apellido = request.POST.get('segundo_apellido')
            estudiante.primer_nombre = request.POST.get('primer_nombre')
            estudiante.segundo_nombre = request.POST.get('segundo_nombre')
            estudiante.correo_institucional = request.POST.get('correo_institucional')
            estudiante.telefono = request.POST.get('telefono')
            estudiante.celular = request.POST.get('celular')
            estudiante.estudiante = request.POST.get('estudiante')
            estudiante.facultad = request.POST.get('facultad')
            estudiante.programa = request.POST.get('programa')
            estudiante.regionalizacion = request.POST.get('regionalizacion')
            estudiante.sede = request.POST.get('sede')
            estudiante.jornada = request.POST.get('jornada')
            estudiante.periodo = request.POST.get('periodo')
            estudiante.save()
            messages.success(request, 'Estudiante modificado con éxito.')
            return redirect('estudiantes')
        else:
            context = {'estudiante': estudiante}
            return render(request, 'modificar_estudiante.html', context)
    except Estudiante.DoesNotExist:
        messages.error(request, 'El estudiante no existe.')
        return redirect('estudiantes')