@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Compra</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $detalle_compra->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Compra
			</th>
			<td>
				{!! $detalle_compra->compras->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Productos
			</th>
			<td>
				{!! $detalle_compra->productos->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Cantidad
			</th>
			<td>
				{!! $detalle_compra->cantidad !!}
			</td>
		</tr>
		<tr>
			<th>
			Precio
			</th>
			<td>
				{!! $detalle_compra->precio_compra !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $detalle_compra->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('detalle_compra') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
