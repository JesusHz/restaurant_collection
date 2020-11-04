@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
<h1>Crear Menu</h1>
<br>
<br>
{!! Form::open([ 'method' => 'PATCH' , 'url'=>'/menu/'.$menu->id]) !!}
  <div class="form-group row">
  {!! Form::label ('nombre','Nombre',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('nombre',$menu->nombre,['placeholder'=>'Ingresa nombre','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('descripcion','Descripcion',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('descripcion',$menu->descripcion,['placeholder'=>'Ingresa Descripcion','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('precio_venta','Precio Venta',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::number ('precio_venta',$menu->precio_venta,['placeholder'=>'Ingresa precio venta','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('id_tipo_venta','Tipo de Venta:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_tipo_venta', $tipos_venta->pluck('nombre','id')->all() , $menu->id_tipo_venta,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('id_categoria','Categoria:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_categoria', $categorias_menu->pluck('nombre','id')->all() , $menu->id_categoria ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('status','Estatus:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , $menu->status ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
	{!! Form::submit('Guardar menu',['class'=>'btn btn-primary']) !!}
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
@endsection()
