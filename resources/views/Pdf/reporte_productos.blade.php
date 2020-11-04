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
      <h1 class="clearfix"><small><span>FECHA: <?= date('Y-m-d'); ?></span><br /></small>Reporte de productos<small><span></span><br /></small></h1>
      <div>
      <table style="width: 90px;">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>IMAGEN</th>
                    <th>DESCRIPCION</th>
                    <th>EXISTENCIA</th>
                    <th>PRECIO COMPRA</th>
                    <th>STOCK</th>
                    <th>CATEGORIA</th>
                    <th>PROVEEDOR</th>
                    <th>STATUS</th>
                </tr>
                <?php foreach($data as $productos) {?>
                <tr>
                    <td><?= $productos->productos->id;?></td>
                    <td><?= $productos->productos->nombre;?></td>
                    <td><img src="<?= $productos->ruta;?>" width="50px"></td>
                    <td><?= $productos->productos->descripcion;?></td>
                    <td><?= $productos->productos->existencia;?></td>
                    <td><?= $productos->productos->precio_compra;?></td>
                    <td><?= $productos->productos->stock;?></td>
                    <td><?= $productos->productos->categorias_productos->nombre;?></td>
                    <td><?= $productos->productos->proveedores->nombre;?></td>
                    <td><?= $productos->status;?></td>
                </tr>
                <?php } ?>
            </table>
      </div>
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