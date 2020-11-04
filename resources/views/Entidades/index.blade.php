@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Entidades</h1>
 	<a href="entidades/create" class="get-started-btn ml-auto">Crear Nueva Entidad</a>
	 <br>
	 <br>

 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
            <th>ID_Pais</th>
 			<th>Clave Pais</th>
 			<th>Nombre</th> 			
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
 		
		 <tbody>
		 @foreach($entidades as $entidad)
 		<tr>
 			<td>{!! $entidad->id !!}</td>
            <td>{!! $entidad->paises->id !!}</td>
 			<td>{!! $entidad->paises->clave !!}</td>
 			<td>{!! $entidad->nombre !!}</td>			
 			<td>{!! $entidad->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/entidades/'.$entidad->id]) !!}
				 	
				 <a href="{!! 'entidades/'.$entidad->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'entidades/'.$entidad->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
