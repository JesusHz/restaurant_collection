@extends('Template.master')

@section('portada')
<script src="{!! asset('/code/highcharts.js') !!}"></script>
<script src="{!! asset('/code/modules/series-label.js') !!}"></script>
<script src="{!! asset('/code/modules/exporting.js') !!}"></script>
<script src="{!! asset('/code/modules/export-data.js') !!}"></script>
<script src="{!! asset('/code/modules/accessibility.js') !!}"></script>

<script src="{!! asset('/code/highcharts.js') !!}"></script>
<script src="{!! asset('/code/modules/data.js') !!}"></script>
<script src="{!! asset('/code/modules/drilldown.js') !!}"></script>
<script src="{!! asset('/code/modules/exporting.js') !!}"></script>
<script src="{!! asset('/code/modules/export-data.js') !!}"></script>
<script src="{!! asset('/code/modules/accessibility.js') !!}"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="{!! asset('/code/modules/variwide.js') !!}"></script>

<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
  <div class="container">

	<div class="d-flex justify-content-between align-items-center">
	  <h2>Graficas Disponibles</h2>
	  <ol>
		<li><a href="cruds">Regresar</a></li>
	  </ol>
	</div>

  </div>
</section><!-- End Breadcrumbs -->
<div class="container">
  <div class="row">
    <div class="col">
    <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
    </div>
    <div class="col">
      <div id="container2" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
    </div>
  </div>
  <div class="row">
    <div class="col">
    </div>
    <div class="col">
      <div id="containe" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
    </div>
    <div class="col">
    </div>
  </div>
</div>


<?php
$serie_base = "";
foreach ($productos as $producto)
{
    $serie_base .= "['".$producto->nombre."', ".$producto->existencia."],";
}
?>
<script type="text/javascript">

Highcharts.chart('container', {
chart: {
type: 'column'
},
title: {
text: 'PRODUCTOS'
},
subtitle: {
text: 'Existencias por producto'
},
xAxis: {
type: 'category',
labels: {
    rotation: -45,
    style: {
        fontSize: '13px',
        fontFamily: 'Verdana, sans-serif'
    }
}
},
yAxis: {
min: 0,
title: {
    text: 'EXISTENCIA'
}
},
legend: {
enabled: false
},
tooltip: {
pointFormat: 'Existencia: <b>{point.y:.1f} piezas</b>'
},
series: [{
name: 'Population',
data: [
    <?=$serie_base;?>
],
dataLabels: {
    enabled: true,
    rotation: -90,
    color: '#FFFFFF',
    align: 'right',
    format: '{point.y:.1f}', // one decimal
    y: 10, // 10 pixels down from the top
    style: {
        fontSize: '13px',
        fontFamily: 'Verdana, sans-serif'
    }
}
}]
});
</script>   

<?php

$serie = "";
foreach ($menu as $men)
{
    $serie .= "{name: '".$men->nombre."', y: ".$men->precio_venta."},";
}
?>

<script type="text/javascript">
// Build the chart
Highcharts.chart('container2', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Menu'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Precio',
        colorByPoint: true,
        data: [ <?=$serie;?>]
    }]
});
</script>


<?php

$serie_c = "";
foreach ($compras as $compra)
{
    $serie_c .= "['".$compra->productos->nombre."',".$compra->precio_compra.",".$compra->cantidad."],";
}
?>
<script type="text/javascript">

Highcharts.chart('containe', {

    chart: {
        type: 'variwide'
    },

    title: {
        text: 'Compras'
    },

    subtitle: {
        text: ' '
    },

    xAxis: {
        type: 'category',
        title: {
            text: 'Compras por precio'
        }
    },

    legend: {
        enabled: false
    },

    series: [{
        name: 'Labor Costs',
        data: [
            <?=$serie_c;?>

        ],
        dataLabels: {
            enabled: true,
            format: '${point.y:.0f}'
        },
        tooltip: {
            pointFormat: 'Precio: <b>$ {point.y}/h</b><br>' +
                'Cantidad: <b>{point.z} piezas</b><br>'
        },
        colorByPoint: true
    }]

});
</script>
@endsection()