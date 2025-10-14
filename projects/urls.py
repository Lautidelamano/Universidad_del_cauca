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
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
