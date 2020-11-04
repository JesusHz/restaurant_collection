@extends('Template.master')

@section('portada')
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
<h1>Crear Restaurante</h1>
<br>
<br>
{!! Form::open([ 'method' => 'PATCH' , 'url'=>'/restaurantes/'.$restaurante->id]) !!}
  <div class="form-group row">
  {!! Form::label ('nombre','Nombre',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('nombre',$restaurante->nombre,['placeholder'=>'Ingresa nombre','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('telefono','Telefono',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('telefono',$restaurante->telefono,['placeholder'=>'Ingresa telefono','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('id_pais','Pais:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_pais', $paises->pluck('nombre','id')->all() , $restaurante->id_pais ,['placeholder'=>'Seleccionar ...','onchange'=>'busca_entidades(this.value);', 'class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('id_entidad','Entidad:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_entidad', array('0' => 'Seleccionar....') , $restaurante->id_entidad ,['placeholder'=>'Seleccionar ...','onchange'=>'busca_municipios(this.value);', 'class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('municipio_id','Municipio:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('municipio_id', array('0' => 'Seleccionar....') , $restaurante->municipio_id,['placeholder'=>'Seleccionar ...','class'=>'form-control','required']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('id_tipo_usu','Tipo de usuario:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('id_tipo_usu', $tipos_usuario->pluck('nombre','id')->all() , $restaurante->id_tipo_usu ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('direccion','Direccion',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('direccion',$restaurante->direccion,['placeholder'=>'Ingresa direccion','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('cp','Codigo postal',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::number ('cp',$restaurante->cp,['placeholder'=>'Ingresa Codigo postal','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('colonia','Colonia',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('colonia',$restaurante->colonia,['placeholder'=>'Ingresa colonia','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('email','Email',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::email ('email',$restaurante->email,['placeholder'=>'Ingresa email','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('username','Username',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::text ('username',$restaurante->username,['placeholder'=>'Ingresa username','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('password','Password',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::password ('password',['placeholder'=>'Ingresa password','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
  {!! Form::label ('status','Estatus:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
	{!! Form::select ('status', 
		array('1'=>'Activo','0'=>'Baja') , $restaurante->status ,['placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
	{!! Form::submit('Guardar Restaurante',['class'=>'btn btn-primary']) !!}
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



	{!! Form::label ('nombre','Nombre') !!}
	{!! Form::text ('nombre',$restaurante->nombre,['placeholder'=>'Ingresa nombre']) !!}
	<br />
	<br />


	{!! Form::label ('telefono','Telefono') !!}
	{!! Form::text ('telefono',$restaurante->telefono,['placeholder'=>'Ingresa telefono']) !!}
	<br />
	<br />

	{!! Form::label ('id_pais','Pais:') !!}
	{!! Form::select ('id_pais', $paises->pluck('nombre','id')->all() , $restaurante->id_pais ,['placeholder'=>'Seleccionar ...']) !!}
	<br />
	<br />
	
	{!! Form::label ('id_entidad','Entidad:') !!}
	{!! Form::select ('id_entidad', $entidades->pluck('nombre','id')->all() , $restaurante->id_entidad ,['placeholder'=>'Seleccionar ...']) !!}
	<br />
	<br />

	{!! Form::label ('municipio:_id','Municipio:') !!}
	{!! Form::select ('municipio_id', $municipios->pluck('nombre','id')->all() , $restaurante->municipio_id ,['placeholder'=>'Seleccionar ...']) !!}
	<br />
	<br />

	{!! Form::label ('id_tipo_usu','Tipo de usuario:') !!}
	{!! Form::select ('id_tipo_usu', $tipos_usuario->pluck('nombre','id')->all() , $restaurante->id_tipo_usu ,['placeholder'=>'Seleccionar ...']) !!}
	<br />
	<br />

	

	{!! Form::label ('direccion','Direccion') !!}
	{!! Form::text ('direccion',$restaurante->direccion,['placeholder'=>'Ingresa direccion']) !!}
	<br />
	<br />

	{!! Form::label ('cp','Codigo postal') !!}
	{!! Form::number ('cp',$restaurante->cp,['placeholder'=>'Ingresa Codigo postal']) !!}
	<br />
	<br />

	{!! Form::label ('colonia','Colonia') !!}
	{!! Form::text ('colonia',$restaurante->colonia,['placeholder'=>'Ingresa colonia']) !!}
	<br />
	<br />

	{!! Form::label ('email','Email') !!}
	{!! Form::email ('email',$restaurante->email,['placeholder'=>'Ingresa email']) !!}
	<br />
	<br />

	{!! Form::label ('username','Username') !!}
	{!! Form::text ('username',$restaurante->username,['placeholder'=>'Ingresa username']) !!}
	<br />
	<br />

	{!! Form::label ('password','Password') !!}
	{!! Form::text ('password',$restaurante->password,['placeholder'=>'Ingresa password']) !!}
	<br />
	<br />

	{!! Form::label ('status','Estatus:') !!}
	{!! Form::select ('status', 
	array('1'=>'Activo','0'=>'Baja') , $restaurante->status ,['placeholder'=>'Seleccionar ...']) !!}
	<br />
	<br />
	<div class="btn">
	{!! Form::submit('Guardar Restaurante') !!}
	{!! Form::close() !!}
	</div>

</center>
</div>

</body>
</html>
@endsection()
