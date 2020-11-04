@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Compras</h1>
 	<a href="compras/create" class="get-started-btn ml-auto">Crear Compra</a>
 	<br>
	 <br>

	 <table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Proveedor</th>		
 			<th>Fecha</th>
            <th>Subtotal</th> 			
 			<th>Iva</th>
 			<th>Total</th>
            <th>Usuario</th>
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
 		
		 <tbody>
		 @foreach($compras as $compra)
 		<tr>
 			<td>{!! $compra->id !!}</td>
 			<td>{!! $compra->proveedores->nombre !!}</td>
 			<td>{!! $compra->fecha !!}</td>		
 			<td>{!! $compra->subtotal !!}</td>
            <td>{!! $compra->iva !!}</td>
            <td>{!! $compra->total !!}</td>
            <td>{!! $compra->users->nombre !!}</td>
 			<td>{!! $compra->status !!}</td>
 			<td>
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/compras/'.$compra->id]) !!}
				 	
 				<a href="{!! 'compras/'.$compra->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'compras/'.$compra->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
