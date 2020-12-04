<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Berita extends Model
{
    use HasFactory;
    protected $table = 'berita';
    protected $primaryKey = 'id_berita';
    public $timestamps = false;

    protected $fillable = [
        'id_berita',
        'namaberita',
        'tanggal',
        'foto',
        'deskripsi',
        'penulis',
    ];
}
