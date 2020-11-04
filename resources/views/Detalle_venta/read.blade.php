@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Venta</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $detalle_venta->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Venta
			</th>
			<td>
				{!! $detalle_venta->ventas->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Menu
			</th>
			<td>
				{!! $detalle_venta->menu->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Cantidad
			</th>
			<td>
				{!! $detalle_venta->cantidad !!}
			</td>
		</tr>
		<tr>
			<th>
			Precio
			</th>
			<td>
				{!! $detalle_venta->precio_venta !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $detalle_venta->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('detalle_venta') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
