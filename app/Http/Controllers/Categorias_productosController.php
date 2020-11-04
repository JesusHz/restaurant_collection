<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorias_productos;

class Categorias_productosController extends Controller
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
        $categorias_productos = Categorias_productos::where('status', 1)
                  ->orderBy('nombre')->get();          
        return view('Categorias_productos.index')->with('categorias_productos', $categorias_productos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Categorias_productos.create');
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
        Categorias_productos::create($datos);
        return redirect('/categorias_productos');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $categorias_productos = Categorias_productos::find($id);
        return view('Categorias_productos.read')->with('categorias_productos', $categorias_productos);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categorias_productos = Categorias_productos::find($id);
        return view('Categorias_productos.edit')->with('categorias_productos', $categorias_productos);
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
        $categorias_productos = Categorias_productos::find($id);
        $categorias_productos->update($datos);
        return redirect('/categorias_productos');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $categorias_productos = Categorias_productos::find($id);
        $categorias_productos->status = 0;
        $categorias_productos->save();
        
        return redirect('/categorias_productos');
    }
}
