@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Pais</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $pais->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $pais->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Clave
			</th>
			<td>
				{!! $pais->clave !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $pais->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('paises') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
