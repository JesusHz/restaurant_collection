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
				{!! $venta->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Cliente
			</th>
			<td>
				{!! $venta->users->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Restaurante
			</th>
			<td>
				{!! $venta->restaurantes->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Fecha
			</th>
			<td>
				{!! $venta->fecha !!}
			</td>
		</tr>
		<tr>
			<th>
			Subtotal
			</th>
			<td>
				{!! $venta->subtotal !!}
			</td>
		</tr>
		<tr>
			<th>
			Iva
			</th>
			<td>
				{!! $venta->iva !!}
			</td>
		</tr>
		<tr>
			<th>
			Total
			</th>
			<td>
				{!! $venta->total !!}
			</td>
		</tr>
		<tr>
			<th>
			Tipo de pago
			</th>
			<td>
				{!! $venta->tipos_pago->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Usuario
			</th>
			<td>
				{!! $venta->users->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $venta->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('ventas') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
