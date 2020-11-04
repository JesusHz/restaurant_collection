<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Http\Requests;
use Illuminate\Foundation\Auth\ThrottlesLogins;

class CrudsController extends Controller
{
    public function __construct(Guard $auth)
    {
        $this->middleware('auth');
    }

    public function cruds ()
    {
        $usuario = \Auth::user();
        return view('cruds')->with('usuario',$usuario);
    }
}
