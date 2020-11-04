@extends('Template.master')

@section('portada')
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
				{!! $compra->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Proveedor
			</th>
			<td>
				{!! $compra->proveedores->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Fecha
			</th>
			<td>
				{!! $compra->fecha !!}
			</td>
		</tr>
		<tr>
			<th>
			Subtotal
			</th>
			<td>
				{!! $compra->subtotal !!}
			</td>
		</tr>
		<tr>
			<th>
			Iva
			</th>
			<td>
				{!! $compra->iva !!}
			</td>
		</tr>
		<tr>
			<th>
			Total
			</th>
			<td>
				{!! $compra->total !!}
			</td>
		</tr>
		<tr>
			<th>
			Usuario
			</th>
			<td>
				{!! $compra->users->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $compra->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('compras') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
