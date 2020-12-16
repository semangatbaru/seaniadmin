<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Config;
use Validator;
use Session;
use DB;

class ConfigController extends Controller{
    public function index(){
        $data = DB::table('config')->get();
        return view('menu.config', ['data' => $data]);
    }
    public function edit($id_config){
        // mengambil data books berdasarkan id yang dipilih
        $config = DB::table('config')->where('id_config',$id_config)->first();
        // passing data books yang didapat ke view edit.blade.php
        return view('menu.editconfig', compact('config'));
    }

    public function update(Request $request) {
        // untuk validasi form
        $this -> validate($request, [
            'nama_config' => 'required',
            'isi' => 'required'
        ]);
        // update data books
        DB::table('config') -> where('id_config', $request -> id_config) -> update([
            'nama_config' => $request -> nama_config,
            'isi' => $request -> isi
        ]);
        // alihkan halaman edit ke halaman books
        
            Session::flash('success', 'Register berhasil! Silahkan login untuk mengakses data');
            return redirect()->route('config');
    }
}
