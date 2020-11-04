@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<div class="container">
<h1>Listado de Menu</h1>
 	<a href="menu/create" class="get-started-btn ml-auto">Crear un nuevo Menu</a>
	 <br>
	 <br>
 	<table id="tabla" class="display">
	 <thead>
 		<tr>
 			<th>ID</th>
 			<th>Nombre</th>		
 			<th>Descripcion</th>
            <th>Precio venta</th> 			
 			<th>Tipo venta</th>
 			<th>Categoria</th>	
            <th>Estatus</th>
            <th>Acciones</th>
 		</tr>
		 </thead>
		 <tbody>
 		@foreach($menus as $menu)
 		<tr>
 			<td>{!! $menu->id !!}</td>
 			<td>{!! $menu->nombre !!}</td>
 			<td>{!! $menu->descripcion !!}</td>		
 			<td>{!! $menu->precio_venta !!}</td>
            <td>{!! $menu->tipos_venta->nombre !!}</td> 
 			<td>{!! $menu->categorias_menu->nombre !!}</td>
 			<td>{!! $menu->status !!}</td>
 			<td class="btn">
			 {!! Form::open(['method' => 'DELETE' , 'url' => '/menu/'.$menu->id]) !!}
				 	
 				<a href="{!! 'menu/'.$menu->id !!}" class="btn btn-primary">Detalle</a> 				
 				<a href="{!! 'menu/'.$menu->id.'/edit' !!}" class="btn btn-primary">Editar</a>

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
