<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tipos_venta;

class Tipos_ventaController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdmin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipos_venta = Tipos_venta::where('status', 1)
                    ->orderBy('nombre')->get();

        return view('Tipos_venta.index')->with('tipos_venta', $tipos_venta);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Tipos_venta.create');
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
        Tipos_venta::create($datos);
        return redirect('/tipos_venta');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tipo_venta = Tipos_venta::find($id);
        return view('Tipos_venta.read')->with('tipo_venta', $tipo_venta);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tipo_venta = Tipos_venta::find($id);
        return view('Tipos_venta.edit')->with('tipo_venta', $tipo_venta);
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
        $tipo_venta = Tipos_venta::find($id);
        $tipo_venta->update($datos);
        return redirect('/tipos_venta');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tipo_venta = Tipos_venta::find($id);
        $tipo_venta->status = 0;
        $tipo_venta->save();
        
        return redirect('/tipos_venta');
    }
}
