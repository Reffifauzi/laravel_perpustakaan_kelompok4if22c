<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;


    protected function validator(array $data)
    {
        return Validator::make($data, [
            'email' => ['required', 'string', 'email', 'max:255'],
            'password' => ['required', 'string', 'min:8'],
        ]);
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
        $validator = $this->validator($request->all());

        if ($validator->fails()) {
            // INI YANG DITAMPILIN KALO ERROR
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $check_login = Auth::attempt($request->only('email', 'password'));

        if ($check_login) {
            $user = Auth::user();
            return response()->json([
                'result' => 'Login successfully.',
                'code' => 200,
                'msg' => [
                    'email' => $user->email,
                    'name' => $user->name,
                    'role' => $user->role
                ]
            ], 200);
        }

        return response()->json([
            'result' => 'Login Failed.',
            'code' => 400,
            'message' => 'Password Salah.'
        ], 400);
    }
}
