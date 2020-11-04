<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Reporte</title>
    <link rel="stylesheet" href="{!! asset('assets/css/style_pdf.css') !!}" media="all" />
      <!-- Librerias Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.5.2/css/bootstrap.min.css">
  </head>
  <body>
      <div class="container">
          <div class="row">
      <main>
      <h1 class="clearfix"><small><span>FECHA: <?= date('Y-m-d'); ?></span><br /></small>Reporte de ventas<small><span></span><br /></small></h1>
      <div>
<!-- FORM -->
<?php foreach($data as $ventas) {?>
        <div class="row">
            <h3>Venta <?= $contador++?></h3>
            <div class="row"><label class="control-label col-sm-2" >ID:</label><input type="text" class="form-control" value="<?= $ventas->id;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >CLIENTE:</label><input type="text" class="form-control" value="<?= $ventas->ventas->users->nombre;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >MENU:</label><input type="text" class="form-control" value="<?= $ventas->menu->nombre;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >CATEGORIA:</label><input type="text" class="form-control" value="<?= $ventas->menu->categorias_menu->nombre;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >PRECIO DE VENTA:</label><input type="text" class="form-control" value="<?= $ventas->menu->precio_venta;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >CANTIDAD:</label><input type="text" class="form-control" value="<?= $ventas->cantidad;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >SUBTOTAL:</label><input type="text" class="form-control" value="<?= $ventas->ventas->subtotal;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >IVA:</label><input type="text" class="form-control" value="<?= $ventas->ventas->iva;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >TOTAL:</label><input type="text" class="form-control" value="<?= $ventas->ventas->total;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >TIPO DE PAGO:</label><input type="text" class="form-control" value="<?= $ventas->ventas->tipos_pago->nombre;?>"></div>
            <div class="row"><label class="control-label col-sm-2" >RESTAURANTE:</label><input type="text" class="form-control" value="<?= $ventas->ventas->restaurantes->nombre;?>"></div>
            <br>
        </div>
<?php } ?>

      <div id="details" class="clearfix">
        <div id="project">
          <div class="arrow"><div class="inner-arrow"><span>HECHO POR:</span> <?= $user->nombre;?></div></div>
          <div class="arrow"><div class="inner-arrow"><span>TELEFONO</span>  <?= $user->telefono;?></div></div>
          <div class="arrow"><div class="inner-arrow"><span>EMAIL</span>  <?= $user->email;?></div></div>
          <div class="arrow"><div class="inner-arrow"><span>DIRECCION</span>  <?= $user->direccion;?></div></div>
        </div>
      </div>
    </main>
    <footer>
      PROGRAMACION WEB-ITTOLUCA
    </footer>
      </div>
      </div>
  </body>
</html>
