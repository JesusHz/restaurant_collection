@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Entidad</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $entidad->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Pais
			</th>
			<td>
				{!! $entidad->paises->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $entidad->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $entidad->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('entidades') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
