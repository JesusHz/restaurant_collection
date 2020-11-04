@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Foto</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $fotos_productos->id !!}
			</td>
		</tr>
		<tr>
			<th>
			 Producto
			</th>
			<td>
				{!! $fotos_productos->productos->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Ruta
			</th>
			<td>
				{!! $fotos_productos->ruta !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $fotos_productos->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('fotos_productos') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
