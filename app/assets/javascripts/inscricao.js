    (function () {
        $(function () {
            var orientadores;
            $('#inscricao_orientador_id').parent().hide();
            orientadores = $("#inscricao_orientador_id").html();
            return $("#laboratorio_laboratorio_id").change(function () {
                var laboratorio, escaped_laboratorio, options;
                laboratorio = $("#laboratorio_laboratorio_id :selected").text();
                escaped_laboratorio = laboratorio.replace(/([#;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
                options = $(orientadores).filter("optgroup[label='" + escaped_laboratorio + "']").html();
                if (options) {
                    $("#inscricao_orientador_id").html(options);
                    return $("#inscricao_orientador_id").parent().show();
                } else {
                    $("#inscricao_orientador_id").empty();
                    return $("#inscricao_orientador_id").parent().hide();
                }
            })
        })
    })(this);