@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Producto</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $producto->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $producto->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Descripcion
			</th>
			<td>
				{!! $producto->descripcion !!}
			</td>
		</tr>
		<tr>
			<th>
			Existencia
			</th>
			<td>
				{!! $producto->existencia !!}
			</td>
		</tr>
		<tr>
			<th>
			Precio Compra
			</th>
			<td>
				{!! $producto->precio_compra !!}
			</td>
		</tr>
		<tr>
			<th>
			Stock
			</th>
			<td>
				{!! $producto->stock !!}
			</td>
		</tr>
		<tr>
			<th>
			Categoria
			</th>
			<td>
				{!! $producto->categorias_productos->nombre !!}
			</td>
		</tr>
		
		<tr>
			<th>
			Proveedor
			</th>
			<td>
				{!! $producto->proveedores->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $producto->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('productos') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
