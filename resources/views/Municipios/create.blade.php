@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
<h1>Crear Municipio</h1>
<br>
<br>
{!! Form::open(['url'=>'/municipios']) !!}
  <div class="form-group row">
  {!! Form::label ('id_entidad','Entidad:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_entidad', $entidades->pluck('nombre','id')->all() , null ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('nombre','Nombre del municipio',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('nombre',null,['placeholder'=>'Ingresa nombre del municipio','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('status','Estatus:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , null ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
	{!! Form::submit('Guardar Municipio',['class'=>'btn btn-primary']) !!}
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
