@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Municipios</h1>
 	<a href="municipios/create" class="get-started-btn ml-auto">Crear un nuevo Municipio</a>
 	<br>
	 <br>
	 <table id="tabla" class="display">
	 	<thead>
 		<tr>
 			<th>ID</th>
 			<th>Id_entidad</th>
 			<th>Entidad</th>
 			<th>Nombre</th> 			
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		</thead>
		<tbody> 
 		@foreach($municipios as $municipio)
 		<tr>
 			<td>{!! $municipio->id !!}</td>
 			<td>{!! $municipio->id_entidad !!}</td>
 			<td>{!! $municipio->entidades->nombre !!}</td>
 			<td>{!! $municipio->nombre !!}</td> 			
 			<td>{!! $municipio->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/municipios/'.$municipio->id]) !!}
				 	
 				<a href="{!! 'municipios/'.$municipio->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'municipios/'.$municipio->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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