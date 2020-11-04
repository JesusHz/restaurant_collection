<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Users;
use App\Paises;
use App\Entidades;
use App\Municipios;
use App\Tipos_usuario;

class UsersController extends Controller
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
        $users = Users::where('status', 1)
                  ->orderBy('id')->get();         
        return view('Users.index')->with('users', $users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $paises = Paises::where('status', 1)->orderBy('nombre')->get();
        $entidades = Entidades::where('status', 1)->orderBy('nombre')->get();
        $municipios = Municipios::where('status', 1)->orderBy('nombre')->get();
        $tipos_usuario = Tipos_usuario::where('status', 1)->orderBy('nombre')->get();
        return view('Users.create')
                ->with('paises',$paises)
                ->with('entidades',$entidades)
                ->with('municipios',$municipios)
                ->with('tipos_usuario',$tipos_usuario);
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
        Users::create($datos);
        return redirect('/users');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = Users::find($id);
        return view('Users.read')->with('user', $user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = Users::find($id);
        $paises = Paises::where('status', 1)->orderBy('nombre')->get();
        $entidades = Entidades::where('status', 1)->orderBy('nombre')->get();
        $municipios = Municipios::where('status', 1)->orderBy('nombre')->get();
        $tipos_usuario = Tipos_usuario::where('status', 1)->orderBy('nombre')->get();
        return view('Users.edit')
                ->with('user',$user)
                ->with('paises',$paises)
                ->with('entidades',$entidades)
                ->with('municipios',$municipios)
                ->with('tipos_usuario',$tipos_usuario);
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
        $user = Users::find($id);
        $user->update($datos);
        return redirect('/users');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = Users::find($id);
        $user->status = 0;
        $user->save();
        return redirect('/users');
    }
}
