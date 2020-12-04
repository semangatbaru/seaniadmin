<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Berita;
use Validator;

class BeritaController extends Controller
{
    public function index(){
        return view('menu.berita');
    }
    public function store(Request $request)
    {
        $rules = [
            'namaberita'           => 'required',
            'foto'                 => 'required',
            'deskripsi'            => 'required',
            'penulis'              => 'required',
        ];
 
        $messages = [
            'namaberita.required'       => 'Nama Berita wajib diisi',
            'foto.required'             => 'Foto wajib diisi',
            'deksripsi.required'        => 'Deskripsi wajib diisi',
            'penulis.required'          => 'Penulis wajib diisi',
            
        ];
 
        $validator = Validator::make($request->all(), $rules, $messages);
 
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput($request->all);
        }
        date_default_timezone_set("asia/Ujung_Pandang");
        $tgl = date('Y-m-d h:i:s');
 

        $extension = $request->file('foto')->extension();
        $imgname = $request->file('foto')->getClientOriginalName().'.'.$extension;
        \Storage::putFileAs('public/images', $request->file('foto'), $imgname);

        $path = \Storage::url($imgname);
        $berita = new Berita;
        // $berita->deskripsi = $request->deskripsi;
        // $berita->namaberita = $request->namaberita;
        // $berita->id_berita = $request->id_berita;
        // $berita->status = $request->status;
        // $berita->status = $request->status;
        $berita->tanggal = $tgl;
        $berita->foto = $path;
        $simpan = $berita->save();

        if($simpan){
            Session::flash('success', 'Register berhasil! Silahkan login untuk mengakses data');
            return redirect()->route('home');
        } else {
            Session::flash('errors', ['' => 'Register gagal! Silahkan ulangi beberapa saat lagi']);
            return redirect()->route('register');
        }
        
    }
}
