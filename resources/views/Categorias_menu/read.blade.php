@extends('Template.master')

@section('portada')

	<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Categorias</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
				Id
			</th>
			<td>
				{!! $categorias_menu->id !!}
			</td>
		</tr>
		<tr>
			<th>
				Nombre
			</th>
			<td>
				{!! $categorias_menu->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
				Descripcion
			</th>
			<td>
				{!! $categorias_menu->descripcion !!}
			</td>
		</tr>
		<tr>
			<th>
				Estatus
			</th>
			<td>
				{!! $categorias_menu->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('categorias_menu') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
	<br>
@endsection()
