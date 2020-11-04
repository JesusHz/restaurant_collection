@extends('Template.master')

@section('portada')
<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contactanos</h2>
          <ol>
            <li><a href="index">Home</a></li>
            <li><a href="cruds">Cruds</a></li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

<!-- ======= Contact Section ======= -->
<section id="contact" class="contact">
      <div class="container">

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="icofont-google-map"></i>
                <h4>Location:</h4>
                <p>A108 Adam Street, New York, NY 535022</p>
              </div>

              <div class="email">
                <i class="icofont-envelope"></i>
                <h4>Email:</h4>
                <p>info@example.com</p>
              </div>

              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>Call:</h4>
                <p>+1 5589 55488 55s</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            {!! Form::open(['url'=>'/enviar_correo', 'role'=>'form', 'enctype'=>'multipart/form-data']) !!}
              <div class="form-row">
                <div class="col-md-6 form-group">
				  {!! Form::text ('nombre',null,['placeholder'=>'Tu nombre','required','class'=>'form-control']) !!}
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
				  {!! Form::email ('destinatario',null,['placeholder'=>'Email','required','class'=>'form-control']) !!}
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-group">
				{!! Form::text ('asunto',null,['placeholder'=>'Asunto','required','class'=>'form-control']) !!}
                <div class="validate"></div>
              </div>
              <div class="form-group">
			    {!! Form::textarea ('contenido_email',null,['placeholder'=>'Mensaje','required','class'=>'form-control']) !!}  
                <div class="validate"></div>
              </div>
              <div class="text-center">{!! Form::submit('ENVIAR',['class' => 'get-started-btn ml-auto']) !!}</div>
            {!! Form::close() !!}

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
@endsection()