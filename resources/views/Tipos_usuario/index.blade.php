@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Tipos de Usuario</h1>
 	<a href="tipos_usuario/create" class="get-started-btn ml-auto">Crear un nuevo tipo de usuario</a>
	 <br>
	 <br>

 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>
 			<th>Nivel</th>			
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($tipos_usuarios as $tipos_usuario)
 		<tr>
 			<td>{!! $tipos_usuario->id !!}</td>
 			<td>{!! $tipos_usuario->nombre !!}</td>
 			<td>{!! $tipos_usuario->nivel !!}</td>			
 			<td>{!! $tipos_usuario->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/tipos_usuario/'.$tipos_usuario->id]) !!}
				 	
 				<a href="{!! 'tipos_usuario/'.$tipos_usuario->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'tipos_usuario/'.$tipos_usuario->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
