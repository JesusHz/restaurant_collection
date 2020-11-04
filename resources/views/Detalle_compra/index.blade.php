@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado Detalle de Compra</h1>
 	<a href="detalle_compra/create" class="get-started-btn ml-auto">Crear Nuevo Detalle de Compra</a>
 	<br>
	 <br>

	 <table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
			<th>ID Compra</th>
            <th>Usuario</th>
 			<th>Producto</th>
 			<th>Cantidad</th> 
            <th>Precio Compra</th> 
 			<th>Estatus</th>
 			<th>Acciones</th>
 		</tr>
		 </thead>
 		
		<tbody>
		@foreach($detalle_compra as $detalle_compra)
 		<tr>
 			<td>{!! $detalle_compra->id !!}</td>
            <td>{!! $detalle_compra->compras->id !!}</td>
			<td>{!! $detalle_compra->compras->users->nombre !!}</td>
 			<td>{!! $detalle_compra->productos->nombre !!}</td>
 			<td>{!! $detalle_compra->cantidad !!}</td>	
            <td>{!! $detalle_compra->precio_compra !!}</td>			
 			<td>{!! $detalle_compra->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/detalle_compra/'.$detalle_compra->id]) !!}
				 	
				 <a href="{!! 'detalle_compra/'.$detalle_compra->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'detalle_compra/'.$detalle_compra->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
@endsection()
