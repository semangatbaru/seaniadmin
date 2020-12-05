<?php

namespace App\Http\Controllers\web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Berita;
use Validator;
use Session;
use DB;
class BeritaController extends Controller
{
    public function index(){
        $data = DB::table('berita')->orderby('tanggal','desc')->get();
        return view('menu.berita', ['data' => $data]);
    }
    public function store(Request $request)
    {
        $input = $request->all();
        $rules = [
            'namaberita'           => 'required',
            'foto'           => 'required',
            'deskripsi'            => 'required',
            'penulis'              => 'required',
        ];
 
        $messages = [
            'namaberita.required'       => 'Judul Informasi wajib diisi',
            'foto.required'             => 'Foto wajib diisi',
            'deksripsi.required'        => 'Deskripsi wajib diisi',
            'penulis.required'          => 'Penulis wajib diisi',
            
        ];
 
        $validator = Validator::make($request->all(), $rules, $messages);
 
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput($request->all);
        }
        date_default_timezone_set("asia/Jakarta");
        $tgl = date('Y-m-d H:i:s');
 

        $image = $request->file('foto');
        $x = $image->extension();
        $name = date('dmyHis').'.'.$x;

        \Storage::disk('public')->put($name, file_get_contents($image));

       
        $link = \Storage::url($name);
        $gambar = url('/').$link;
        $input['tanggal'] = $tgl;
        $input['foto'] = $gambar;
        $simpan = Berita::create($input);

        if($simpan){
            Session::flash('success', 'Register berhasil! Silahkan login untuk mengakses data');
            return redirect()->back();
        } else {
            Session::flash('errors', ['' => 'Register gagal! Silahkan ulangi beberapa saat lagi']);
            return redirect()->route('register');
        }
        
    }
    public function delete($id_berita)
    {
        DB::table('berita')->where('id_berita', $id_berita)->delete();

        return redirect()->back()->with('success', 'Berhasil hapus data!');
    }
}
