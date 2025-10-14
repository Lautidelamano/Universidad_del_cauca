from django.db import models

class Docente(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    departamento = models.CharField(max_length=100)
    facultad = models.CharField(max_length=100)
    email = models.CharField(max_length=100)

    class Meta:
        db_table = "docentes"
        verbose_name = "Docente"
        verbose_name_plural = "Docentes"

    def __str__(self):
        return f"{self.nombre} ({self.departamento})"
    

class Estudiante(models.Model):
    legajo = models.CharField(max_length=20, primary_key=True)
    tipo_identificacion = models.CharField(max_length=5)
    identificacion = models.CharField(max_length=20)
    primer_apellido = models.CharField(max_length=50)
    segundo_apellido = models.CharField(max_length=50, blank=True, null=True)
    primer_nombre = models.CharField(max_length=50)
    segundo_nombre = models.CharField(max_length=50, blank=True, null=True)
    correo_institucional = models.CharField(max_length=100, unique=True)
    telefono = models.CharField(max_length=20, blank=True, null=True)
    celular = models.CharField(max_length=20, blank=True, null=True)
    estudiante = models.CharField(max_length=20)
    facultad = models.CharField(max_length=100)
    programa = models.CharField(max_length=100)
    regionalizacion = models.CharField(max_length=1)
    sede = models.CharField(max_length=50)
    jornada = models.CharField(max_length=20)
    periodo = models.CharField(max_length=10)

    class Meta:
        db_table = "estudiantes"
        verbose_name = "Estudiante"
        verbose_name_plural = "Estudiantes"

    def __str__(self):
        return f"{self.primer_nombre} {self.primer_apellido} ({self.legajo})"

class Compilado(models.Model):
    fecha = models.DateField()
    sesion = models.IntegerField()
    programa = models.CharField(max_length=500)
    estudiante = models.ForeignKey(Estudiante, on_delete=models.SET_NULL, null=True, related_name='compilados')
    modalidad = models.CharField(max_length=100)
    asunto = models.TextField()
    director = models.ForeignKey(Docente, on_delete=models.SET_NULL, null=True, related_name='compilados_dirigidos')
    resolucion = models.CharField(max_length=50)
    programa_profesor = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.estudiante} - {self.programa} ({self.fecha})"
    
