<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorias_menu;

class Categorias_menuController extends Controller
{
    public function __construct()
    {
        $this->middleware('usuarioAdminCliente');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorias_menu = Categorias_menu::where('status', 1)
                  ->orderBy('nombre')->get();          
        return view('Categorias_menu.index')->with('categorias_menu', $categorias_menu);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('Categorias_menu.create');
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
        Categorias_menu::create($datos);
        return redirect('/categorias_menu');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $categorias_menu = Categorias_menu::find($id);
        return view('Categorias_menu.read')->with('categorias_menu', $categorias_menu);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categorias_menu = Categorias_menu::find($id);
        return view('Categorias_menu.edit')->with('categorias_menu', $categorias_menu);
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
        $categorias_menu = Categorias_menu::find($id);
        $categorias_menu->update($datos);
        return redirect('/categorias_menu');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $categorias_menu = Categorias_menu::find($id);
        $categorias_menu->status = 0;
        $categorias_menu->save();
        
        return redirect('/categorias_menu');
    }
}
