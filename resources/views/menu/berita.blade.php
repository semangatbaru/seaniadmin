@extends('layouts.blank')

@section('content')
    
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Info Page</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Info Page</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
        <div class="container-fluid">
            <div class="row">
                
                {{-- form --}}
                <div class="col-sm-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Tambah Informasi</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                  <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <div class="card-body">
                        @if(session('errors'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                Something it's wrong:
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                                <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                                </ul>
                            </div>
                        @endif
                            <form action="{{ route('postInfo') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                    <div class="form-group row">
                                        <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Judul Informasi</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="namaberita" class="form-control" id="namaberita" placeholder="Judul Informasi">
                                            <input type="hidden" name="id_berita" class="form-control" id="id_berita" placeholder="id Informasi">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="s" class="col-sm-2 col-form-label">Penulis </label>
                                        <div class="col-sm-10">
                                            <input type="text" name="penulis" class="form-control" id="penulis" placeholder="Penulis / Sumber Informasi">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="s" class="col-sm-2 col-form-label">Gambar</label>
                                        <div class="col-sm-10">
                                            <input type="file" name="foto" class="form-control" id="penulis" placeholder="Penulis / Sumber Informasi">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="z" class="col-sm-2 col-form-label">Deskripsi</label>
                                        <div class="col-sm-10">
                                        <textarea class="textarea" placeholder="Place some text here" name="deskripsi"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                        </div>
                                    </div>
                                  
                                  
                                
                                <!-- /.card-body -->
                                <div class="form-group ">
                                    <button type="submit" class=" col-12 btn btn-success swalDefaultSuccess">Publish</button>
                                </div>
                              </form>
                        </div>
                    </div>
                    
                    <!-- /.card -->
                    <!-- /.card -->
                    
                </div>
                
                {{-- table --}}
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Data Customer</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Judul Berita</th>
                                    <th>Penulis</th>
                                    <th>Tanggal</th>
                                    <th style="width: 40px">Label</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                <?php $no = 0;?>
                                @foreach($data as $p)
                                <?php $no++ ?>
                                <tr>
                                    
                                    <td>{{ $no }}</td>
                                    <td>{{ $p->id_berita }}</td>
                                    <td>{{ $p->penulis }}</td>
                                    <td>{{date('d/m/Y', strtotime( $p->tanggal ))}}</td>
                                    <td><a href="{{ URL('/deleteInfo/'.$p->id_berita )}}" class="btn btn-danger" onclick="return confirm('Yakin hapus permanen?')">Hapus</a></td>
                                    
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>

                
            </div>
        </div>
    </section>
    
    <!-- /.content -->
    @endsection