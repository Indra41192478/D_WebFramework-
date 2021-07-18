<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function templateHomeAdmin()
    {
        return view('admin.layouts.homeForm');
    }
}
