<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Detalle_venta;
use App\Ventas;
use App\Menu;

class Detalle_ventaController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdminVendedor');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $detalle_venta = Detalle_venta::where('status', 1)->get();         
        return view('Detalle_venta.index')->with('detalle_venta', $detalle_venta);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $ventas = Ventas::where('status', 1)
                  ->orderBy('id')->get();
        $menu = Menu::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Detalle_venta.create')
                ->with('ventas',$ventas)
                ->with('menu',$menu);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datos = $request->all();
        Detalle_venta::create($datos);
        return redirect('/detalle_venta');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $detalle_venta = Detalle_venta::find($id);
        return view('Detalle_venta.read')->with('detalle_venta', $detalle_venta);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $detalle_venta = Detalle_venta::find($id);
        $ventas = Ventas::where('status', 1)
                  ->orderBy('id')->get();
        $menu = Menu::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Detalle_venta.edit')
               ->with('detalle_venta', $detalle_venta)
               ->with('ventas',$ventas)
               ->with('menu',$menu);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $datos = $request->all();
        $detalle_venta = Detalle_venta::find($id);
        $detalle_venta->update($datos);
        return redirect('/detalle_venta');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $detalle_venta = Detalle_venta::find($id);
        $detalle_venta->status = 0;
        $detalle_venta->save();
        return redirect('/detalle_venta');
    }
}
