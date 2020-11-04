@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Categorias Menu</h1>
 	<a href="categorias_menu/create" class="get-started-btn ml-auto">Crear nueva categoria</a>
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
		@foreach($categorias_menu as $categorias_menu)
 		<tr>
 			<td>{!! $categorias_menu->id !!}</td>
 			<td>{!! $categorias_menu->nombre !!}</td>
 			<td>{!! $categorias_menu->descripcion !!}</td>			
 			<td>{!! $categorias_menu->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/categorias_menu/'.$categorias_menu->id]) !!}
				 	
 				<a href="{!! 'categorias_menu/'.$categorias_menu->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'categorias_menu/'.$categorias_menu->id.'/edit' !!}" class="btn btn-primary">Editar</a>
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
