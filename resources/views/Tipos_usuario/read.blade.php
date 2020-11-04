@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Tipo de Usuario</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $tipos_usuario->id !!}
			</td>
		</tr>
		<tr>
			<th>
			 Nombre
			</th>
			<td>
				{!! $tipos_usuario->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			 Nivel
			</th>
			<td>
				{!! $tipos_usuario->nivel !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $tipos_usuario->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('tipos_usuario') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
	<br>
	<br>
	<br>
	<br>
@endsection()
