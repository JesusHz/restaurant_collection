@extends('Template.master')

@section('portada')
<br/>
<br/>
<br/>
<br/>

<div class="container">
  <h2>Registro</h2>
  <div class="row">
      <div class="col-sm-6">
        {!! Form::open(['url'=>'/register']) !!}
          <div class="form-group">
		  {!! Form::label ('nombre','Nombre') !!}
	{!! Form::text ('nombre',null,['placeholder'=>'Nombre','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('ap_pat','Apellido Paterno') !!}
	{!! Form::text ('ap_pat',null,['placeholder'=>'Apellido Paterno','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('ap_mat','Apellido Materno') !!}
	{!! Form::text ('ap_mat',null,['placeholder'=>'Apellido Materno','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('fecha_naci','Fecha de Nacimiento') !!}
	{!! Form::date ('fecha_naci',null,['class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('username','Username') !!}
	{!! Form::text ('username',null,['placeholder'=>'Username','class'=>'form-control','minlength'=>'4','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato (minimo 4 caracteres)</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('email','Email') !!}
	{!! Form::email ('email',null,['placeholder'=>'Email','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('password','Password') !!}
	{!! Form::password('password', ['placeholder'=>'Password', 'class'=>'form-control','minlength'=>'8','required']) !!}
            <div class="valid-feedback">Ok.</div>
            <div class="invalid-feedback">Favor de capturar este dato (minimo 8 caracteres)</div>
          </div>
          <div class="form-group form-check">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" name="remember" required>Acepta los terminos.
              <div class="valid-feedback">Ok.</div>
              <div class="invalid-feedback">Acepta los terminos para poder continuar.</div>
            </label>
          </div>
		  {!! Form::submit('Aceptar',['class'=>'btn btn-primary']) !!}
		  {!! Form::reset('Borrar',['class'=>'btn btn-primary']) !!}
		{!! Form::close() !!}
		<br>
		<a href="register_partner"><span class="skill">¿Quieres aliarte con nosotros? Registrate Aqui</span></a>
      </div>
  </div>
</div>

<br/>
<br/>
@endsection()