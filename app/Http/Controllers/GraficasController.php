<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Productos;
use App\Menu;
use App\Detalle_compra;

class GraficasController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdmin');
    }

    public function grafica_productos ()
    {
        $compras = Detalle_compra::orderBy('id')->get()->where('status',1);
        $menu = Menu::orderBy('nombre')->get()->where('status',1);
        $productos = Productos::orderBy('nombre')->get()->where('status',1);
        return view('Graficas.graficas')->with('productos',$productos)->with('menu',$menu)->with('compras',$compras);
    }
}
