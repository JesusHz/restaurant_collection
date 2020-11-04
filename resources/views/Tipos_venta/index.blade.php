@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de tipos de venta</h1>
 	<a href="tipos_venta/create" class="get-started-btn ml-auto">Crear nuevo tipo de venta</a>
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
 		@foreach($tipos_venta as $tipo_venta)
 		<tr>
 			<td>{!! $tipo_venta->id !!}</td>
 			<td>{!! $tipo_venta->nombre !!}</td>
 			<td>{!! $tipo_venta->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/tipos_venta/'.$tipo_venta->id]) !!}
	 			
 				<a href="{!! 'tipos_venta/'.$tipo_venta->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'tipos_venta/'.$tipo_venta->id.'/edit' !!}" class="btn btn-primary">Editar</a>
 				{!! Form::submit('Eliminar' ,['class'=>'btn btn-primary']) !!}
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
<br>
<br>

@endsection()
