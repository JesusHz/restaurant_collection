@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Municipio</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $municipio->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Entidad
			</th>
			<td>
				{!! $municipio->entidades->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $municipio->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $municipio->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('municipios') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
