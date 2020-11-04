@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Proveedores</h1>
 	<a href="proveedores/create" class="get-started-btn ml-auto">Crear un nuevo Proveedor</a>
	 <br>
	 <br>
 	<table id="tabla" class="display" >
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>
 			<th>RFC</th>
 			<th>Razon Social</th> 			
 			<th>Direccion</th>
 			<th>Email</th>
            <th>Contacto</th> 			
 			<th>Pais</th>
 			<th>Entidad</th>
            <th>Municipio</th> 			
 			<th>Codigo Postal</th>
 			<th>Colonia</th>
            <th>Telefono</th>
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($proveedores as $proveedor)
 		<tr>
 			<td>{!! $proveedor->id !!}</td>
 			<td>{!! $proveedor->nombre !!}</td>
 			<td>{!! $proveedor->rfc !!}</td>
 			<td>{!! $proveedor->razon_social !!}</td> 			
 			<td>{!! $proveedor->direccion !!}</td>
            <td>{!! $proveedor->email !!}</td>
 			<td>{!! $proveedor->contacto !!}</td>
 			<td>{!! $proveedor->paises->nombre !!}</td>
 			<td>{!! $proveedor->entidades->nombre !!}</td> 			
 			<td>{!! $proveedor->municipios->nombre !!}</td>
 			<td>{!! $proveedor->cp !!}</td>
 			<td>{!! $proveedor->colonia !!}</td>
 			<td>{!! $proveedor->telefono !!}</td>
 			<td>{!! $proveedor->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/proveedores/'.$proveedor->id]) !!}
				 	
 				<a href="{!! 'proveedores/'.$proveedor->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'proveedores/'.$proveedor->id.'/edit' !!}" class="btn btn-primary">Editar</a>

 				{!! Form::submit('Eliminar',['class'=>'btn btn-primary']) !!}
				{!! Form::close() !!}
 			</td>
 		</tr>
 		@endforeach
		 </tbody>
 	</table>
 	<br />
 	<a href="{!! asset('cruds') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
@endsection()
