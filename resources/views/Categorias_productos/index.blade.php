@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Categorias productos</h1>
 	<a href="categorias_productos/create" class="get-started-btn ml-auto">Crear nueva categoria</a>
 	<br>
	 <br>
	 <table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>
 			<th>Descripcion</th>			
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
 		
		 <tbody>
		 @foreach($categorias_productos as $categorias_productos)
 		<tr>
 			<td>{!! $categorias_productos->id !!}</td>
 			<td>{!! $categorias_productos->nombre !!}</td>
 			<td>{!! $categorias_productos->descripcion !!}</td>			
 			<td>{!! $categorias_productos->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/categorias_productos/'.$categorias_productos->id]) !!}
				 	
 				<a href="{!! 'categorias_productos/'.$categorias_productos->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'categorias_productos/'.$categorias_productos->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
@endsection()
