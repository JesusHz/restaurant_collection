@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
<h1>Editar Detalle de Venta</h1>
<br>
<br>
{!! Form::open([ 'method' => 'PATCH' , 'url'=>'/detalle_venta/'.$detalle_venta->id]) !!}
  <div class="form-group row">
  {!! Form::label ('venta_id','Venta:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('venta_id', $ventas->pluck('id','id')->all() , $detalle_venta->venta_id,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('id_menu','Menu:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_menu', $menu->pluck('nombre','id')->all() , $detalle_venta->id_menu ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('cantidad','Cantidad',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('cantidad',$detalle_venta->cantidad,['placeholder'=>'Ingresa cantidad','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('precio_venta','Precio Venta',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('precio_venta',$detalle_venta->precio_venta,['placeholder'=>'Ingresa Precio_venta','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('status','Estatus:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , $detalle_venta->status ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
	{!! Form::submit('Guardar venta',['class'=>'btn btn-primary']) !!}
    </div>
  </div>
  {!! Form::close() !!}
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
<h1>Editar Detalle de Venta</h1>




        {!! Form::label ('venta_id','Venta:') !!}
		{!! Form::select ('venta_id', $ventas->pluck('id','id')->all() , $detalle_venta->venta_id ,['placeholder'=>'Seleccionar ...']) !!}
		<br />
		<br />

        {!! Form::label ('menu_id','Menu:') !!}
		{!! Form::select ('menu_id', $menu->pluck('nombre','id')->all() , $detalle_venta->menu_id ,['placeholder'=>'Seleccionar ...']) !!}
		<br />
		<br />

        {!! Form::label ('cantidad','Cantidad') !!}
		{!! Form::text ('cantidad',$detalle_venta->cantidad,['placeholder'=>'Ingresa cantidad']) !!}
		<br />
		<br />

        {!! Form::label ('precio_venta','Precio venta') !!}
		{!! Form::text ('precio_venta',$detalle_venta->precio_venta,['placeholder'=>'Ingresa Precio_venta']) !!}
		<br />
		<br />

		{!! Form::label ('status','Estatus:') !!}
		{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , $detalle_venta->status ,['placeholder'=>'Seleccionar ...']) !!}
		<br />
		<br />
		<div class="btn">
		{!! Form::submit('Guardar venta') !!}
		{!! Form::close() !!}
		</div>
</center>
</div>


</body>
</html>
@endsection()
