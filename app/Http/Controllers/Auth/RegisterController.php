<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Users;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use App\Paises;
use App\Entidades;
use App\Municipios;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function getRegister()
    {
        return view("registro");
    }
    
    protected function postRegister(Request $request)
    {
        $data = $request->all();

        Users::create([
            'nombre' => $data['nombre'],
            'ap_pat' => $data['ap_pat'],
            'ap_mat' => $data['ap_mat'],
            'email' => $data['email'],
            'telefono' => '123456',
            'direccion' => '1',
            'id_pais' => 4,
            'id_entidad' => 1,
            'municipio_id' => 1,
            'id_tipo_usu' => 4,
            'colonia' => '1',
            'cp' => 0,
            'fecha_naci' => $data['fecha_naci'],
            'username' => $data['username'],
            'password' => Hash::make($data['password']),
            'status' => 1
        ]);
        //mandar un correo electronico
        return redirect('login');
    }

    protected function getRegisterPartner()
    {
        $paises = Paises::where('status', 1)->orderBy('nombre')->get();
        $entidades = Entidades::where('status', 1)->orderBy('nombre')->get();
        $municipios = Municipios::where('status', 1)->orderBy('nombre')->get();
        return view("registro_partner")->with('paises',$paises)
        ->with('entidades',$entidades)
        ->with('municipios',$municipios);
    }
    
    protected function postRegisterPartner(Request $request)
    {
        $data = $request->all();

        Users::create([
            'nombre' => $data['nombre'],
            'ap_pat' => $data['ap_pat'],
            'ap_mat' => $data['ap_mat'],
            'email' => $data['email'],
            'telefono' => $data['telefono'],
            'direccion' => $data['direccion'],
            'id_pais' => $data['id_pais'],
            'id_entidad' => $data['id_entidad'],
            'municipio_id' => $data['municipio_id'],
            'id_tipo_usu' => 1,
            'colonia' => $data['colonia'],
            'cp' => $data['cp'],
            'fecha_naci' => $data['fecha_naci'],
            'username' => $data['username'],
            'password' => Hash::make($data['password']),
            'status' => 1
        ]);
        //mandar un correo electronico
        return redirect('login');
    }
}
