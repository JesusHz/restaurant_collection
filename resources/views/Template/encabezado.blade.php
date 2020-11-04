<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Restaurant Collection</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Librerias Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <!-- Script tablas entidades y municipios -->

  <script type="text/javascript">
    function busca_entidades (id_pais)
    {
        $("#id_entidad").empty();
        $("#municipio_id").empty();
		    var asset = '{{ asset('') }}';
		    var ruta = asset+'busca_entidades_partner/'+id_pais;
        $.ajax({
            type:'GET',
            url:ruta,
            success:function(data){
                var entidad = data;
                for (var i = 0; i < entidad.length; i++)
                {
                    $("#id_entidad").append('<option value="'+entidad[i].id+'">'+entidad[i].nombre+'</option>');
                }
            }
        });
    }
    
    function busca_municipios (id_entidad)
    {
        $("#municipio_id").empty();
		    var asset = '{{ asset('') }}';
		    var ruta = asset+'busca_municipios_partner/'+id_entidad;
        $.ajax({
            type:'GET',
            url:ruta,
            success:function(data){
                var municipio = data;
                for (var i = 0; i < municipio.length; i++)
                {
                    $("#municipio_id").append('<option value="'+municipio[i].id+'">'+municipio[i].nombre+'</option>');
                }
            }
        });
    }
  </script>

  <!-- Favicons -->
  <link href="{!! asset('assets/img/favicon.png') !!}" rel="icon">
  <link href="{!! asset('assets/img/apple-touch-icon.png') !!}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{!! asset('assets/vendor/bootstrap/css/bootstrap.min.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/vendor/icofont/icofont.min.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/vendor/boxicons/css/boxicons.min.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/vendor/animate.css/animate.min.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/vendor/remixicon/remixicon.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/vendor/venobox/venobox.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/vendor/owl.carousel/assets/owl.carousel.min.css') !!}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{!! asset('assets/css/style.css') !!}" rel="stylesheet">
  <link href="{!! asset('assets/css/jquery.dataTables.min.css') !!}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Sailor - v2.1.0
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>