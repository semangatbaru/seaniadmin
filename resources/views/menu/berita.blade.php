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
                            <form action="postInfo" method="post" enctype="multipart/form-data">
                                @csrf
                                    <div class="form-group row">
                                        <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Judul Informasi</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="namaberita" class="form-control" id="namaberita" placeholder="Judul Informasi">
                                            <input type="text" name="id_berita" class="form-control" id="id_berita" placeholder="id Informasi">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="s" class="col-sm-2 col-form-label">Penulis </label>
                                        <div class="col-sm-10">
                                            <input type="text" name="penulis" class="form-control" id="penulis" placeholder="Penulis / Sumber Informasi">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="exampleInputFile" class="col-sm-2 col-form-label">File input</label>
                                        <div class="input-group col-sm-10">
                                        <div class="custom-file ">
                                            <input type="file" class="custom-file-input" id="exampleInputFile">
                                            <label class="custom-file-label" for="exampleInputFile">Pilih Gambar</label>
                                        </div>
                                        <div class="input-group-append">
                                            <span class="input-group-text" id="">Upload</span>
                                        </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="z" class="col-sm-2 col-form-label">Deskripsi</label>
                                        <div class="col-sm-10">
                                        <textarea class="textarea" placeholder="Place some text here"
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
               
            </div>
        </div>
    </section>
    
    <!-- /.content -->
    @endsection