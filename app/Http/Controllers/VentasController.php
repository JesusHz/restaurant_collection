<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ventas;
use App\Users;
use App\Restaurantes;
use App\Tipos_pago;

class VentasController extends Controller
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
        $ventas = Ventas::where('status', 1)
                  ->orderBy('id')->get();
        return view('Ventas.index')->with('ventas', $ventas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $restaurantes = Restaurantes::where('status', 1)
                  ->orderBy('nombre')->get();
        $users = Users::where('status', 1)
                  ->orderBy('nombre')->get();
        $tipos_pago = Tipos_pago::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Ventas.create')
                ->with('restaurantes',$restaurantes)
                ->with('tipos_pago',$tipos_pago)
                ->with('users',$users);
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
        Ventas::create($datos);
        return redirect('/ventas');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $venta = Ventas::find($id);
        return view('Ventas.read')->with('venta', $venta);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $venta = Ventas::find($id);
        $restaurantes = Restaurantes::where('status', 1)
                  ->orderBy('nombre')->get();
        $users = Users::where('status', 1)
                  ->orderBy('nombre')->get();
        $tipos_pago = Tipos_pago::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Ventas.edit')
                ->with('venta', $venta)
                ->with('restaurantes',$restaurantes)
                ->with('tipos_pago',$tipos_pago)
                ->with('users',$users);
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
        $venta = Ventas::find($id);
        $venta->update($datos);
        return redirect('/ventas');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $venta = Ventas::find($id);
        $venta->status = 0;
        $venta->save();
        return redirect('/ventas');
    }
}
