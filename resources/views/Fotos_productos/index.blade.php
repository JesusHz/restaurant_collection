@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Fotos productos</h1>
 	<a href="fotos_productos/create" class="get-started-btn ml-auto">Crear Nueva Foto</a>
 	<br>
	 <br>

	 <table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
            <th>ID_Productos</th>
 			<th>Ruta</th> 	
			<th>Imagen</th> 			
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($fotos_productos as $foto_productos)
 		<tr>
 			<td>{!! $foto_productos->id !!}</td>
            <td>{!! $foto_productos->productos->nombre !!}</td>
 			<td>{!! $foto_productos->ruta !!}</td>	
			<td><img src="{!! $foto_productos->ruta !!}" width="100"/></td> 		
 			<td>{!! $foto_productos->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/fotos_productos/'.$foto_productos->id]) !!}
				 	
 				<a href="{!! 'fotos_productos/'.$foto_productos->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'fotos_productos/'.$foto_productos->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
