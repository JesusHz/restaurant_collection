@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Restaurante</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
				Id
			</th>
			<td>
				{!! $restaurante->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $restaurante->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Telefono
			</th>
			<td>
				{!! $restaurante->telefono !!}
			</td>
		</tr>
		<tr>
			<th>
			Pais
			</th>
			<td>
				{!! $restaurante->paises->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Entidad
			</th>
			<td>
				{!! $restaurante->entidades->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Municipio
			</th>
			<td>
				{!! $restaurante->municipios->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Tipo de Usuario
			</th>
			<td>
				{!! $restaurante->tipos_usuario->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Direccion
			</th>
			<td>
				{!! $restaurante->direccion !!}
			</td>
		</tr>
		<tr>
			<th>
			Codigo Postal
			</th>
			<td>
				{!! $restaurante->cp !!}
			</td>
		</tr>
		<tr>
			<th>
			Colonia
			</th>
			<td>
				{!! $restaurante->colonia !!}
			</td>
		</tr>
		<tr>
			<th>
			Email
			</th>
			<td>
				{!! $restaurante->email !!}
			</td>
		</tr>
		<tr>
			<th>
			Username
			</th>
			<td>
				{!! $restaurante->username !!}
			</td>
		</tr>
		<tr>
			<th>
			Password
			</th>
			<td>
				{!! $restaurante->password !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $restaurante->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('restaurantes') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
