<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Detalle_venta;
use App\Detalle_compra;
use App\Fotos_productos;
use App\Productos;
use App\Ventas;
use App\Users;

class PdfController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdmin');
    }

    public function generaPDF ()
    {
        return view("Pdf.reportes");
    }

    public function crearPDF ($datos, $vistaurl, $tipo, $user)
    {
        $contador = 1;
        $data = $datos;
        $date = date('Y-m-d');
        $view = \View::make($vistaurl, compact('data', 'date'))->with('user',$user)->with('contador',$contador)->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        if ($tipo == 1) return $pdf->stream('reporte');
        if ($tipo == 2) return $pdf->download('reporte.pdf');
    }

    public function crear_reporte_ventas ($tipo)
    {
        $user = \Auth::user();
        $vistaurl = "Pdf.reporte_ventas";
        $ventas = Detalle_venta::orderBy('id')->get();
        return $this->crearPDF($ventas, $vistaurl, $tipo, $user);
    }

    public function crear_reporte_productos ($tipo)
    {
        $user = \Auth::user();
        $vistaurl = "Pdf.reporte_productos";
        $productos = Fotos_productos::orderBy('id')->get();
        return $this->crearPDF($productos, $vistaurl, $tipo, $user);
    }

    public function crear_reporte_users ($tipo)
    {
        $user = \Auth::user();
        $vistaurl = "Pdf.reporte_users";
        $ventas = Detalle_compra::orderBy('id')->get();
        return $this->crearPDF($ventas, $vistaurl, $tipo, $user);
    }
}
