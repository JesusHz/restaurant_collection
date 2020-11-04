<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tipos_pago;

class Tipos_pagoController extends Controller
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
        $tipos_pago = Tipos_pago::where('status', 1)
                  ->orderBy('nombre')->get();          
        return view('Tipos_pago.index')->with('tipos_pago', $tipos_pago);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Tipos_pago.create');
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
        Tipos_pago::create($datos);
        return redirect('/tipos_pago');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tipos_pago = Tipos_pago::find($id);
        return view('Tipos_pago.read')->with('tipos_pago', $tipos_pago);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tipos_pago = Tipos_pago::find($id);
        return view('Tipos_pago.edit')->with('tipos_pago', $tipos_pago);
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
        $tipos_pago = Tipos_pago::find($id);
        $tipos_pago->update($datos);
        return redirect('/tipos_pago');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tipos_pago = Tipos_pago::find($id);
        $tipos_pago->status = 0;
        $tipos_pago->save();
        
        return redirect('/tipos_pago');
    }
}
