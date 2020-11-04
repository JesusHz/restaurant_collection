@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de paises</h1>
<a href="paises/create" class="get-started-btn ml-auto">Crear un nuevo pais</a>
<br>
<br>
<table id="tabla" class="display">
	<thead>
	<tr>
 		<th>ID</th>
 		<th>Nombre</th>
 		<th>Clave</th>
 		<th>Estatus</th>
 		<th>Acciones</th>
 	</tr>
	</thead>
	
	<tbody>
	@foreach($paises as $pais)
	<tr>
 		<td>{!! $pais->id !!}</td>
 		<td>{!! $pais->nombre !!}</td>
 		<td>{!! $pais->clave !!}</td>
 		<td>{!! $pais->status !!}</td>
 		<td>
		    {!! Form::open(['method' => 'DELETE' , 'url' => '/paises/'.$pais->id]) !!}
 			<a href="{!! 'paises/'.$pais->id !!}" class="btn btn-primary">Detalle</a> 				
 			<a href="{!! 'paises/'.$pais->id.'/edit' !!}" class="btn btn-primary">Editar</a>
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
