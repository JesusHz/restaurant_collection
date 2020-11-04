@extends('Template.master')

@section('portada')
<br/>
<br/>
<br/>
<br/>

<div class="container">
  <h2>Registro - Asociados</h2>
  <div class="row">
      <div class="col-sm-6">
        {!! Form::open(['url'=>'/register_partner']) !!}
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
		  {!! Form::label ('telefono','Telefono') !!}
	{!! Form::text ('telefono',null,['placeholder'=>'Telefono','class'=>'form-control','minlength'=>'10','required']) !!}
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
		  {!! Form::label ('id_pais','Pais:') !!}
	{!! Form::select ('id_pais', $paises->pluck('nombre','id')->all() , null ,['placeholder'=>'Seleccionar ...','onchange'=>'busca_entidades(this.value);', 'class'=>'form-control']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('id_entidad','Entidad:') !!}
	{!! Form::select ('id_entidad', array('0' => 'Seleccionar....') , null ,['placeholder'=>'Seleccionar ...','onchange'=>'busca_municipios(this.value);', 'class'=>'form-control']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('municipio_id','Municipio:') !!}
	{!! Form::select ('municipio_id', array('0' => 'Seleccionar....') , null,['placeholder'=>'Seleccionar ...','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('colonia','Colonia') !!}
	{!! Form::text ('colonia',null,['placeholder'=>'Colonia','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('direccion','Direccion') !!}
	{!! Form::text ('direccion',null,['placeholder'=>'Direccion','class'=>'form-control','required']) !!}
            <div class="valid-feedback">OK.</div>
            <div class="invalid-feedback">Favor de capturar este dato</div>
          </div>
          <div class="form-group">
		  {!! Form::label ('cp','Codigo Postal') !!}
	{!! Form::number ('cp',null,['placeholder'=>'Codigo Postal','class'=>'form-control','required']) !!}
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
      </div>
  </div>
</div>

<br/>
<br/>
@endsection()