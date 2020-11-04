@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Tipos de Pago</h1>
 	<a href="tipos_pago/create" class="get-started-btn ml-auto">Crear un nuevo tipo de pago</a>
	 <br>
	 <br>
 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>		
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($tipos_pago as $tipos_pago)
 		<tr>
 			<td>{!! $tipos_pago->id !!}</td>
 			<td>{!! $tipos_pago->nombre !!}</td>		
 			<td>{!! $tipos_pago->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/tipos_pago/'.$tipos_pago->id]) !!}
				 	
 				<a href="{!! 'tipos_pago/'.$tipos_pago->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'tipos_pago/'.$tipos_pago->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
