@extends('Template.master')}}

<script type="text/javascript">
    function ejecutar (tipo,cant,id)
    {
        $.ajax({
            type:'GET',
            url:'ejecutar_ajax/'+tipo+'/'+cant+'/'+id,
            success:function(data){
                $("#respuesta").html(data);
            }
        });
    }

   
    function actualizar (id,exis,pc)
    {
        var asset = '{{ asset('') }}';
        var ruta = asset+'actualizar_prod/'+id+'/'+exis+'/'+pc;
        $.ajax({
            type:'GET',
            url:ruta,
            success:function(data){
                $("#respuesta_actualizar").html(data);
            }
        });
    }

    function llenar_campos (id)
    {
        var asset = '{{ asset('') }}';
        var ruta = asset+'llenar_campos/'+id;

        $.ajax({
            type:'GET',
            url:ruta,
            success:function(data){
                $("#campos").html(data);
            }
        });
    }

    
</script>

@section('portada')
<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Ajax</h2>
          <ol>
            <li><a href="cruds">Regresar</a></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->




<div class="container">
<br>
<h3>EJEMPLO 1</h3>
<br>
<div class="form-group row">
    {!! Form::label ('producto_id','Productos:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
    {!! Form::select ('producto_id', $productos->pluck('nombre','id')->all() , null ,['class'=>'formulario','placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
	<br />
	<br />
    <div class="form-group row">
    {!! Form::label ('cantidad','Cantidad:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
    {!! Form::number ('cantidad', null ,['class'=>'formulario','placeholder'=>'Cantidad a modificar','class'=>'form-control']) !!}
    </div>
  </div>
	<br />
	<br />

	<button class="btn btn-primary" onclick="ejecutar(1,document.getElementById('cantidad').value,
                document.getElementById('producto_id').value)">Incrementar</button>
    <button class="btn btn-primary" onclick="ejecutar(2,document.getElementById('cantidad').value,
                document.getElementById('producto_id').value)">Decrementar</button>
	<br />
	<br />

    <div id="respuesta">

    </div>
    </div>
<br>
<br>




<div class="container">

<h3>EJEMPLO 2</h3>
<div class="form-group row">
{!! Form::label ('id_pais','Paises:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
    {!! Form::select ('id_pais', $paises->pluck('nombre','id')->all() , null ,['class'=>'formulario','placeholder'=>'Seleccionar ...','onchange'=>'busca_entidades(this.value)','class'=>'form-control']) !!}
    </div>
  </div>
	<br />
    <br />
    <div class="form-group row">
    {!! Form::label ('id_entidad','Entidades:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
    {!! Form::select ('id_entidad', array('0' => 'Seleccionar....') , null ,['class'=>'formulario','placeholder'=>'Seleccionar ...','onchange'=>'busca_municipios(this.value)','class'=>'form-control']) !!}
    </div>
  </div>
  <br>
  <br>
  <div class="form-group row">
  {!! Form::label ('municipio_id','Municipios:',['class'=>'col-sm-2 col-form-label']) !!}
    <div class="col-sm-10">
    {!! Form::select ('municipio_id', array('0'=>'Seleccionar....'), null ,['class'=>'formulario','placeholder'=>'Seleccionar ...','class'=>'form-control']) !!}
    </div>
  </div>
  </div>
	<br />
	<br />


   

<div class="container">
<h3>EJEMPLO 3</h3>
{!! Form::label
('id_producto2','Productos:',['class'=>'col-sm-2 col-form-label']) !!}
{!! Form::select ('id_producto2', 
$productos->pluck('nombre','id')->all() , null 
, ['class'=>'form-control','placeholder'=>'Seleccionar
...','onchange'=>'llenar_campos(this.value);']) !!}
</div>
<div class="container">
<div id="campos" class="formulario">
    <div class='form-group'>
        <label for='exist'>Cantidad para agregar a la existencia actual:</label>
        <input type='number' name='exis' id='exis'
        placeholder='Ingresa existencia' class="form-control"/>
    </div>

    <div class='form-group'>
        <label for='pc'>Precio compra:</label>
        <input type='text' name='pc' id='pc' value='' placeholder='Ingresa Precio Compra' class='form-control'/>
    </div>
</div>

<button class="btn btn-primary" onclick="actualizar(document.getElementById('id_producto2').value,document.getElementById('exis').value,document.getElementById('pc').value);">ACTUALIZAR</button>
<div id="respuesta_actualizar">

</div>
</div>
<br />
@endsection()