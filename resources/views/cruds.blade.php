@extends('Template.master')

@section('portada')
<main id="main">

<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
  <div class="container">

	<div class="d-flex justify-content-between align-items-center">
	  <h2>Bienvenido: {!! $usuario->nombre !!}</h2>
	  <ol>
		<li><a href="index">Home</a></li>
		<li><a href="cruds">Cruds</a></li>
		<li><a href="ajax">Ajax</a></li>
		<li><a href="genera_pdf">Reportes</a></li>
		<li><a href="graficas">Graficas</a></li>
	  </ol>
	</div>

  </div>
</section><!-- End Breadcrumbs -->

<!-- ======= Team Section ======= -->
<section id="team" class="team ">
  <div class="container">

	<div class="row">

	  <div class="col-lg-6">
		<div class="member d-flex align-items-start">
		  <div class="pic"><img src="{!! asset('assets/open-iconic/svg/globe.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="paises"><h4>Paises</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4 mt-lg-0">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/map.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="entidades"><h4>Entidades</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/map-marker.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="municipios"><h4>Municipios</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/person.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="users"><h4>Usuarios</h4></a>
		  </div>
		</div>
	  </div>

	</div>

	<div class="row">

	  <div class="col-lg-6">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/people.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="tipos_usuario"><h4>Tipos de usuarios</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4 mt-lg-0">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/location.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="proveedores"><h4>Proveedores</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/tag.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="productos"><h4>Productos</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/list.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="categorias_productos"><h4>Catgorias de productos</h4></a>
		  </div>
		</div>
	  </div>

	</div>

	<div class="row">

	  <div class="col-lg-6">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/box.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="menu"><h4>Menu</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4 mt-lg-0">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/list-rich.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="categorias_menu"><h4>Categorias de menu</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/calculator.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="tipos_venta"><h4>Tipos de venta</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/cart.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="compras"><h4>Compras</h4></a>
		  </div>
		</div>
	  </div>

	</div>

	<div class="row">

	  <div class="col-lg-6">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/file.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="detalle_compra"><h4>Detalle de compras</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4 mt-lg-0">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/credit-card.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="tipos_pago"><h4>Tipos de pago</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/camera-slr.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="fotos_productos"><h4>Fotos de productos</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/image.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="fotos_menu"><h4>Fotos de menu</h4></a>
		  </div>
		</div>
	  </div>

	</div>

	<div class="row">

	  <div class="col-lg-6">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/book.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
			<a href="restaurantes"><h4>Restaurantes</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4 mt-lg-0">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/dollar.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="ventas"><h4>Ventas</h4></a>
		  </div>
		</div>
	  </div>

	  <div class="col-lg-6 mt-4">
		<div class="member d-flex align-items-start">
		<div class="pic"><img src="{!! asset('assets/open-iconic/svg/document.svg') !!}" class="img-fluid" alt="" width="100px"></div>
		  <div class="member-info">
		 	<a href="detalle_venta"><h4>Detalle de venta</h4></a>
		  </div>
		</div>
	  </div>

	</div>

  </div>
</section><!-- End Team Section -->

</main><!-- End #main -->

@endsection()