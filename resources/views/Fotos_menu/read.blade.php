@extends('Template.master')

@section('portada')
<br>
<br>
	<br>
	<br>
	<br>
	<div class="container">
	<h1>Detalle Foto</h1>
	<br>
	<table class="table table-striped table-dark">
		<tr>
			<th>
			 Id
			</th>
			<td>
				{!! $foto_menu->id !!}
			</td>
		</tr>
		<tr>
			<th>
			 Menu
			</th>
			<td>
				{!! $foto_menu->menu->nombre !!}
			</td>
		</tr>
		<tr>
			<th>
			Ruta
			</th>
			<td>
				{!! $foto_menu->ruta !!}
			</td>
		</tr>
		<tr>
			<th>
			Estatus
			</th>
			<td>
				{!! $foto_menu->status !!}
			</td>
		</tr>
	</table>

	
	<a href="{!! asset('fotos_menu') !!}" class="get-started-btn ml-auto">REGRESAR</a>
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
