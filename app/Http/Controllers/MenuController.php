<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Menu;
use App\Categorias_menu;
use App\Tipos_venta;

class MenuController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');//Todos los usuarios
        $this->middleware('usuarioAdminCliente');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menus = Menu::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Menu.index')->with('menus', $menus);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categorias = Categorias_menu::where('status', 1)->orderBy('nombre')->get();
        $tipos_venta = Tipos_venta::where('status', 1)->orderBy('nombre')->get();
        return view('Menu.create')
                ->with('categorias',$categorias)
                ->with('tipos_venta',$tipos_venta);
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
        Menu::create($datos);
        return redirect('/menu');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $menu = Menu::find($id);
        return view('Menu.read')->with('menu', $menu);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $menu = Menu::find($id);
        $categorias = Categorias_menu::where('status', 1)->orderBy('nombre')->get();
        $tipos_venta = Tipos_venta::where('status', 1)->orderBy('nombre')->get();
        return view('Menu.edit')
                ->with('menu',$menu)
                ->with('categorias_menu',$categorias)
                ->with('tipos_venta',$tipos_venta);
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
        $menu = Menu::find($id);
        $menu->update($datos);
        return redirect('/menu');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $menu = Menu::find($id);
        $menu->status = 0;
        $menu->save();
        return redirect('/menu');
    }
}
