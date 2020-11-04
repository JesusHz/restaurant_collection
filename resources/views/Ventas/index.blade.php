@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Ventas</h1>
 	<a href="ventas/create" class="get-started-btn ml-auto">Crear Venta</a>
	 <br>
	 <br>
	
 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Cliente</th>
            <th>Restaurante</th> 		
 			<th>Fecha</th>
            <th>Subtotal</th> 			
 			<th>Iva</th>
 			<th>Total</th>
            <th>Tipo Pago</th> 
            <th>Usuario</th>
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($ventas as $venta)
 		<tr>
 			<td>{!! $venta->id !!}</td>
 			<td>{!! $venta->users->nombre !!}</td>
 			<td>{!! $venta->restaurantes->nombre !!}</td>	
            <td>{!! $venta->fecha !!}</td> 	
 			<td>{!! $venta->subtotal !!}</td>
            <td>{!! $venta->iva !!}</td>
            <td>{!! $venta->total !!}</td>
			<td>{!! $venta->tipos_pago->nombre !!}</td>
            <td>{!! $venta->users->nombre !!}</td>
 			<td>{!! $venta->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/ventas/'.$venta->id]) !!}
				 	
 				<a href="{!! 'ventas/'.$venta->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'ventas/'.$venta->id.'/edit' !!}" class="btn btn-primary">Editar</a>
				 <br>
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
