@extends('Template.master')

@section('portada')
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div class="container">
  <h2>Iniciar Sesion</h2>
  {!! Form::open(['url'=>'/login']) !!}
    <div class="form-group">
	{!! Form::label ('username','Username') !!}
	{!! Form::text ('username',null,['placeholder'=>'Username','class'=>'form-control']) !!}
    </div>
    <div class="form-group">
	{!! Form::label ('password','Password') !!}
	{!! Form::password('password', ['placeholder'=>'Password', 'class'=>'form-control']) !!}
    </div>
	{!! Form::submit('Login',['class'=>'btn btn-primary']) !!}
	<a href="register" class="btn btn-primary">Registrarse</a>
  {!! Form::close() !!}
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
@endsection()