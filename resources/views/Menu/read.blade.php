@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Menu</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $menu->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $menu->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Precio Venta
			</th>
			<td>
				{!! $menu->precio_venta !!}
			</td>
		</tr>
		<tr>
			<th>
			Tipo de Venta
			</th>
			<td>
				{!! $menu->tipos_venta->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Categoria
			</th>
			<td>
				{!! $menu->categorias_menu->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $menu->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('menu') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
	<br>
	<br>
	<br>
@endsection()
