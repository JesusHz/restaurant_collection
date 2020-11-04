@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Usuario</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
				Id
			</th>
			<td>
				{!! $user->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $user->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Apellido Paterno
			</th>
			<td>
				{!! $user->ap_pat !!}
			</td>
		</tr>
		<tr>
			<th>
			Apellido Materno
			</th>
			<td>
				{!! $user->ap_mat !!}
			</td>
		</tr>
		<tr>
			<th>
			Email
			</th>
			<td>
				{!! $user->email !!}
			</td>
		</tr>
		<tr>
			<th>
			Telefono
			</th>
			<td>
				{!! $user->telefono !!}
			</td>
		</tr>
		<tr>
			<th>
			Direccion
			</th>
			<td>
				{!! $user->direccion !!}
			</td>
		</tr>
		<tr>
			<th>
			Pais
			</th>
			<td>
				{!! $user->paises->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Entidad
			</th>
			<td>
				{!! $user->entidades->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Municipio
			</th>
			<td>
				{!! $user->municipios->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Tipo de Usuario
			</th>
			<td>
				{!! $user->tipos_usuario->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Colonia
			</th>
			<td>
				{!! $user->colonia !!}
			</td>
		</tr>
		<tr>
			<th>
			Codigo Postal
			</th>
			<td>
				{!! $user->cp !!}
			</td>
		</tr>
		<tr>
			<th>
			Fecha de Nacimiento
			</th>
			<td>
				{!! $user->fecha_naci !!}
			</td>
		</tr>
		<tr>
			<th>
			Username
			</th>
			<td>
				{!! $user->username !!}
			</td>
		</tr>
		<tr>
			<th>
			Password
			</th>
			<td>
				{!! $user->password !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $user->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('users') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
