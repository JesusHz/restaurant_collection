@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Reportes</h1>
<br>
<br>
<table id="tabla" class="display">
	<thead>
	<tr>
		<th>ID</th>
        <th>Reporte</th>
        <th>Ver</th>
        <th>Descargar</th>
 	</tr>
	</thead>
	<tbody>
	<tr>
        <td>1</td>
        <td>Reporte de Ventas</td>
        <td><a href="{!! asset('crear_reporte_ventas/1') !!}" target="blank"><button class="btn btn-primary">Ver</button></a></td>
        <td><a href="{!! asset('crear_reporte_ventas/2') !!}" target="blank"><button class="btn btn-primary">Descargar</button></a></td>
    </tr>
	<tr>
        <td>2</td>
        <td>Reporte de Productos</td>
        <td><a href="{!! asset('crear_reporte_productos/1') !!}" target="blank"><button class="btn btn-primary">Ver</button></a></td>
        <td><a href="{!! asset('crear_reporte_productos/2') !!}" target="blank"><button class="btn btn-primary">Descargar</button></a></td>
    </tr>
	<tr>
        <td>3</td>
        <td>Reporte de Compras</td>
        <td><a href="{!! asset('crear_reporte_users/1') !!}" target="blank"><button class="btn btn-primary">Ver</button></a></td>
        <td><a href="{!! asset('crear_reporte_users/2') !!}" target="blank"><button class="btn btn-primary">Descargar</button></a></td>
    </tr>
	</tbody>
	
</table>
<br />
<a href="{!! asset('cruds') !!}" class="get-started-btn ml-auto">Regresar</a>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
@endsection()