@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Usuarios</h1>
 	<a href="users/create" class="get-started-btn ml-auto">Crear un nuevo Usuario</a>
	 <br>
	 <br>
 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>
 			<th>Apellido Paterno</th>
 			<th>Apellido Materno</th> 			
 			<th>Email</th>
 			<th>Telefono</th>
            <th>Direccion</th> 			
 			<th>Pais</th>		
 			<th>Tipo de Usuario</th>
 			<th>Colonia</th>
            <th>Codigo Postal</th> 			
 			<th>Fecha de Nacimiento</th>
 			<th>Username</th>
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($users as $user)
 		<tr>
 			<td>{!! $user->id !!}</td>
 			<td>{!! $user->nombre !!}</td>
 			<td>{!! $user->ap_pat !!}</td>
 			<td>{!! $user->ap_mat !!}</td> 			
 			<td>{!! $user->email !!}</td>
            <td>{!! $user->telefono !!}</td>
 			<td>{!! $user->direccion !!}</td>
 			<td>{!! $user->paises->nombre !!}</td>
            <td>{!! $user->tipos_usuario->nombre !!}</td>
 			<td>{!! $user->colonia !!}</td>
 			<td>{!! $user->cp !!}</td>
 			<td>{!! $user->fecha_naci !!}</td> 			
 			<td>{!! $user->username !!}</td>
 			<td>{!! $user->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/users/'.$user->id]) !!}
				 	
 				<a href="{!! 'users/'.$user->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'users/'.$user->id.'/edit' !!}" class="btn btn-primary">Editar</a>
				 <br>
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
@endsection()
