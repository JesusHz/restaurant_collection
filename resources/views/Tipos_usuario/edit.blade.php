@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
<h1>Editar Tipo de Usuario</h1>
<br>
<br>
{!! Form::open([ 'method' => 'PATCH' , 'url'=>'/tipos_usuario/'.$tipos_usuario->id]) !!}
  <div class="form-group row">
  {!! Form::label ('nombre','Nombre',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('nombre',$tipos_usuario->nombre,['placeholder'=>'Ingresa nombre del usuario','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('nivel','Nivel de Uusario',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('nivel',$tipos_usuario->nivel,['placeholder'=>'Ingresa nivel del usuario','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('status','Estatus:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , $tipos_usuario->status ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
	{!! Form::submit('Guardar Usuario',['class'=>'btn btn-primary']) !!}
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
