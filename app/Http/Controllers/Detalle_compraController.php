<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Detalle_compra;
use App\Compras;
use App\Productos;

class Detalle_compraController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdminSupervisor');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $detalle_compra = Detalle_compra::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Detalle_compra.index')->with('detalle_compra', $detalle_compra);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $compras = Compras::where('status', 1)
                  ->orderBy('id')->get();
        $productos = Productos::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Detalle_compra.create')
                ->with('compras',$compras)
                ->with('productos',$productos);
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
        Detalle_compra::create($datos);
        return redirect('/detalle_compra');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $detalle_compra = Detalle_compra::find($id);
        return view('Detalle_compra.read')->with('detalle_compra', $detalle_compra);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $detalle_compra = Detalle_compra::find($id);
        $compras = Compras::where('status', 1)
                  ->orderBy('id')->get();
        $productos = Productos::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Detalle_compra.edit')
               ->with('detalle_compra', $detalle_compra)
               ->with('compras',$compras)
               ->with('productos',$productos);
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
        $detalle_compra = Detalle_compra::find($id);
        $detalle_compra->update($datos);
        return redirect('/detalle_compra');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $detalle_compra = Detalle_compra::find($id);
        $detalle_compra->status = 0;
        $detalle_compra->save();
        return redirect('/detalle_compra');
    }
}
