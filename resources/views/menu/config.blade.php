@extends('layouts.blank')

@section('content')
    
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Config Page</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Config Page</li>
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
                
                {{-- table --}}
                <div class="col-sm-12">
                    <div class="card">
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
                        <div class="card-header">
                            <h3 class="card-title">Data Config</h3>
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
                                    <th>Nama Config</th>
                                    <th>Value</th>
                                    
                                    <th style="width: 40px">Label</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                <?php $no = 0;?>
                                @foreach($data as $p)
                                <?php $no++ ?>
                                <tr>
                                    
                                    <td>{{ $no }}</td>
                                    <td>{{ $p->nama_config }}</td>
                                    <td>{{ $p->isi }}</td>
                                    
                                    <td><a href="{{ URL('/edit/'.$p->id_config )}}" class="btn btn-warning">Edit</a></td>
                                    
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