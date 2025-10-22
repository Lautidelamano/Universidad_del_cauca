    $(document).ready(function () {
      // Inicializar DataTable
      let tabla = $('#datatable').DataTable({
        language: {
          url: "https://cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json"
        },
        columnDefs: [
          { targets: -1, orderable: false }
        ],
        paging: true,
        searching: true
      });

      // Evento para abrir modal VER
      $('#datatable tbody').on('click', '.verBtn', function () {
        let data = tabla.row($(this).parents('tr')).data();
        let headers = ["No", "Fecha", "Sesión", "Programa", "Estudiante", "Modalidad", "Asunto", "Director", "Resolución", "Profesor"];
        
        let contenido = "";
        headers.forEach((h, i) => {
          contenido += `<tr><th>${h}</th><td>${data[i]}</td></tr>`;
        });
        $("#detalleContenido").html(contenido);
        $("#detalleModal").modal("show");
      });

    });