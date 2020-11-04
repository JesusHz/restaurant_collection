@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
<h1>Ediatr Foto</h1>
<br>
<br>
{!! Form::open([ 'method' => 'PATCH' , 'url'=>'/fotos_productos/'.$fotos_productos->id,'role'=>'form','enctype'=>'multipart/form-data']) !!}
  <div class="form-group row">
  {!! Form::label ('producto_id','Productos:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('producto_id', $productos->pluck('nombre','id')->all() , $fotos_productos->producto_id ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('img_foto','Imagen',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::file ('img_foto',null,['required','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('status','Estatus:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , $fotos_productos->status ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
	{!! Form::submit('Guardar Foto',['class'=>'btn btn-primary']) !!}
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
