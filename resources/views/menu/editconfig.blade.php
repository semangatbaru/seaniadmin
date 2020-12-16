@extends('layouts.blank')

@section('content')
    
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Edit Config Page</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Edit Config Page</li>
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
                            <h3 class="card-title">Edit Config</h3>
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
                            <form action="{{ route('updateConfig') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                    <div class="form-group row">
                                        <label for="exampleInputEmail1" class="col-sm-2 col-form-label" >Nama Config</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="nama_config" class="form-control" value="{{ $config->nama_config }}"  id="nama_config" placeholder="Nama Config">
                                            <input type="hidden" name="id_config" class="form-control" value="{{ $config->id_config }}"  id="nama_config" placeholder="Nama Config">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="s" class="col-sm-2 col-form-label">Isi </label>
                                        <div class="col-sm-10">
                                            <textarea type="text" name="isi" class="form-control"  id="penulis" placeholder="Isi Config">{{ $config->isi }}</textarea>
                                        </div>
                                    </div>
                                    
                                  
                                  
                                
                                <!-- /.card-body -->
                                <div class="form-group ">
                                    <button type="submit" class=" col-12 btn btn-success swalDefaultSuccess">Save</button>
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