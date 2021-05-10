<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WeddingController extends Controller
{
    public function template()
    {
        // memanggil view tambah
        return view('template');
    }
}
