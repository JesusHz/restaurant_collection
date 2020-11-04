@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container-fluid">
<h1>Listado de Productos</h1>
 	<a href="productos/create" class="get-started-btn ml-auto">Crear un nuevo Producto</a>
	 <br>
	 <br>

 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>		
 			<th>Descripcion</th>
 			<th>Existencia</th>
            <th>Precio compra</th> 			
 			<th>Stock</th>
 			<th>Categoria</th>
            <th>Proveedor</th> 	
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($productos as $producto)
 		<tr>
 			<td>{!! $producto->id !!}</td>
 			<td>{!! $producto->nombre !!}</td>
 			<td>{!! $producto->descripcion !!}</td>
 			<td>{!! $producto->existencia !!}</td> 			
 			<td>{!! $producto->precio_compra !!}</td>
            <td>{!! $producto->stock !!}</td>
 			<td>{!! $producto->categorias_productos->nombre !!}</td>
 			<td>{!! $producto->proveedores->nombre !!}</td> 
 			<td>{!! $producto->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/productos/'.$producto->id]) !!}
				 	
 				<a href="{!! 'productos/'.$producto->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'productos/'.$producto->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
