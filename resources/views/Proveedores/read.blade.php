@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Proveedor</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $proveedor->id !!}
			</td>
		</tr>
		<tr>
			<th>
			Nombre
			</th>
			<td>
				{!! $proveedor->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			RFC
			</th>
			<td>
				{!! $proveedor->rfc !!}
			</td>
		</tr>
		<tr>
			<th>
			Razon Social
			</th>
			<td>
				{!! $proveedor->razon_social !!}
			</td>
		</tr>
		<tr>
			<th>
			Direccion
			</th>
			<td>
				{!! $proveedor->direccion !!}
			</td>
		</tr>
		<tr>
			<th>
			Email
			</th>
			<td>
				{!! $proveedor->email !!}
			</td>
		</tr>
		<tr>
			<th>
			Contacto
			</th>
			<td>
				{!! $proveedor->contacto !!}
			</td>
		</tr>
		
		<tr>
			<th>
			Pais
			</th>
			<td>
				{!! $proveedor->paises->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Entidad
			</th>
			<td>
				{!! $proveedor->entidades->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Municipio
			</th>
			<td>
				{!! $proveedor->municipios->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Codigo Postal
			</th>
			<td>
				{!! $proveedor->cp !!}
			</td>
		</tr>
		<tr>
			<th>
			Colonia
			</th>
			<td>
				{!! $proveedor->colonia !!}
			</td>
		</tr>
		<tr>
			<th>
			Telefono
			</th>
			<td>
				{!! $proveedor->telefono !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $proveedor->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('proveedores') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
