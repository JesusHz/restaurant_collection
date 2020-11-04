<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Compras;
use App\Proveedores;
use App\Users;

class ComprasController extends Controller
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
        $compras = Compras::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Compras.index')->with('compras', $compras);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $proveedores = Proveedores::where('status', 1)
                  ->orderBy('nombre')->get();
        $users = Users::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Compras.create')
                ->with('proveedores',$proveedores)
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
        Compras::create($datos);
        return redirect('/compras');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $compra = Compras::find($id);
        return view('Compras.read')->with('compra', $compra);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $compra = Compras::find($id);
        $proveedores = Proveedores::where('status', 1)
                  ->orderBy('nombre')->get();
        $users = Users::where('status', 1)
                  ->orderBy('nombre')->get();
        return view('Compras.edit')
               ->with('compra', $compra)
               ->with('proveedores',$proveedores)
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
        $compra = Compras::find($id);
        $compra->update($datos);
        return redirect('/compras');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $compra = Compras::find($id);
        $compra->status = 0;
        $compra->save();
        return redirect('/compras');
    }
}
