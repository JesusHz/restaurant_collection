@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Fotos menu</h1>
 	<a href="fotos_menu/create" class="get-started-btn ml-auto">Crear Nueva Foto</a>
	 <br>
	 <br>
 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
            <th>ID_Menu</th>
 			<th>Ruta</th> 		
			<th>Imagen</th> 	
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($fotos_menu as $foto_menu)
 		<tr>
 			<td>{!! $foto_menu->id !!}</td>
            <td>{!! $foto_menu->menu->nombre !!}</td>
 			<td>{!! $foto_menu->ruta !!}</td>	
			 <td><img src="{!! $foto_menu->ruta !!}" width="100px"/></td> 	
 			<td>{!! $foto_menu->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/fotos_menu/'.$foto_menu->id]) !!}
				 	
 				<a href="{!! 'fotos_menu/'.$foto_menu->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'fotos_menu/'.$foto_menu->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
