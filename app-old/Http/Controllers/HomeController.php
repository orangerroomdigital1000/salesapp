<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {

      $users = DB::table('users')
      ->leftJoin('roles', 'roles.id', '=', 'users.role_id')
      ->select('users.*', 'roles.role')
      ->get();
      if(Auth::user()->role->role == 'user'){
      return view('user');
      }

      if(Auth::user()->role->role == 'admin'){
      return view('admin',['users' => $users]);
      }

      if(Auth::user()->role->role == 'super_admin'){
      return view('super_admin',['users' => $users]);
      }

      if(Auth::user()->role->role == 'retail_admin'){
      $data = \DB::table('forms')->orderBy('id','dsc')->get();
      return view('retail',['data' => $data]);
      }

      if(Auth::user()->role->role == 'retail_user'){
      $data = \DB::table('forms')->orderBy('id','dsc')->where('assigned_to',\Auth::user()->id)->get();
      return view('retail',['data' => $data]);
      }


    }
}
