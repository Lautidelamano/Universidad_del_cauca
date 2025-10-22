from django.contrib import admin
from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('', views.home, name='home'),
    path('signup/', views.signup, name='signup'),
    path('login/', views.inicio_sesion, name='login'),
    path('logout/', views.cierre_sesion, name='logout'),
    path('docentes/', views.docentes, name='docentes'),
    path('agregar_docente/', views.agregar_docente, name='agregar_docente'),
    path('eliminar_docente/<int:docente_id>/', views.eliminar_docente, name='eliminar_docente'),
    path('modificar_docente/<int:docente_id>/', views.modificar_docente, name='modificar_docente'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
