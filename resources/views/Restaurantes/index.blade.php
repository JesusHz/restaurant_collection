@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Restaurantes</h1>
 	<a href="restaurantes/create" class="get-started-btn ml-auto">Crear un nuevo Usuario</a>
	 <br>
	 <br>
 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th> 
 			<th>Telefono</th>		
 			<th>Pais</th>
 			<th>Entidad</th>
            <th>Municipio</th> 			
             <th>Direccion</th> 
             <th>Codigo Postal</th> 		
 			<th>Colonia</th>
             <th>Email</th> 	
 			<th>Username</th>
            <th>Password</th>
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($restaurantes as $restaurante)
 		<tr>
 			<td>{!! $restaurante->id !!}</td>
 			<td>{!! $restaurante->nombre !!}</td>			
            <td>{!! $restaurante->telefono !!}</td>
 			<td>{!! $restaurante->paises->nombre !!}</td>
 			<td>{!! $restaurante->entidades->nombre !!}</td> 			
 			<td>{!! $restaurante->municipios->nombre !!}</td>
            <td>{!! $restaurante->direccion !!}</td>
 			<td>{!! $restaurante->cp !!}</td>
 			<td>{!! $restaurante->colonia !!}</td>
 			<td>{!! $restaurante->email !!}</td> 			
 			<td>{!! $restaurante->username !!}</td>
            <td>{!! $restaurante->password !!}</td>
 			<td>{!! $restaurante->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/restaurantes/'.$restaurante->id]) !!}
				 	
 				<a href="{!! 'restaurantes/'.$restaurante->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'restaurantes/'.$restaurante->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
<br>
<br>
<br>
@endsection()
