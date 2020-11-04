  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo"><a href="index">Restaurant Collection</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">

        <ul>
          <li class="active"><a href="index">Home</a></li>

          <li ><a href="cruds">CRUDS</a>
          </li>

          <li><a href="ajax">Ajax</a></li>
          <li><a href="genera_pdf">Reportes</a></li>
          <li><a href="graficas">Graficas</a></li>
          <li><a href="form_enviar_correo">Contacto</a></li>

        </ul>

      </nav><!-- .nav-menu -->

      @auth
      <a href="logout" class="get-started-btn ml-auto">Cerrar Sesion</a>
      @else
      <a href="login" class="get-started-btn ml-auto">Login</a>
      @endauth

    </div>
  </header><!-- End Header -->