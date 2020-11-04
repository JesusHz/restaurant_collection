@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado Detalle de Venta</h1>
 	<a href="detalle_venta/create" class="get-started-btn ml-auto">Crear Nuevo Detalle de Venta</a>
 	<br>
	 <br>

	 <table id="tabla" class="display">
 		<tr>
		 <thead>
 			<th>ID</th>
            <th>ID Venta</th>
			<th>Fecha</th>
			<th>Cliente</th>
			<th>Restaurante</th>
 			<th>Menu</th>
 			<th>Cantidad</th> 
            <th>Subtotal</th>
			<th>Iva</th>
			<th>Total</th>
			<th>Tipo de Pago</th>
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
 		
		 <tbody>
		 @foreach($detalle_venta as $detalle_venta)
 		<tr>
 			<td>{!! $detalle_venta->id !!}</td>
            <td>{!! $detalle_venta->venta_id !!}</td>
			<td>{!! $detalle_venta->ventas->fecha !!}</td>
			<td>{!! $detalle_venta->ventas->users->nombre !!}</td>
			<td>{!! $detalle_venta->ventas->restaurantes->nombre !!}</td>
 			<td>{!! $detalle_venta->menu->nombre !!}</td>
 			<td>{!! $detalle_venta->cantidad !!}</td>	
            <td>{!! $detalle_venta->ventas->subtotal !!}</td>	
			<td>{!! $detalle_venta->ventas->iva !!}</td>	
			<td>{!! $detalle_venta->ventas->total !!}</td>	
			<td>{!! $detalle_venta->ventas->tipos_pago->nombre !!}</td>		
 			<td>{!! $detalle_venta->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/detalle_venta/'.$detalle_venta->id]) !!}
				 	
				 <a href="{!! 'detalle_venta/'.$detalle_venta->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'detalle_venta/'.$detalle_venta->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
