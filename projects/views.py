from django.shortcuts import render
import json
from .models import Compilado, Estudiante, Docente
from django.contrib.auth.models import User
from django.contrib.auth import login as auth_login, logout as auth_logout
from django.http import HttpResponse as httpResponse
from django.contrib.auth import authenticate

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
            return render(request, 'home.html')
        else:
            return render(request, 'login.html', {'message': 'Credenciales inválidas', 'message_type': 'danger'})
    else:
        return render(request, 'login.html')

def cierre_sesion (request):
    auth_logout(request)
    return render(request, 'login.html', {'message': 'Sesión cerrada', 'message_type': 'success'})

def home(request):
    compilados = Compilado.objects.select_related('estudiante', 'director').all()
    context = {
        'compilados': compilados
    }
    return render(request, 'home.html', context)