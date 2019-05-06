@extends('layouts.app')
<style type = "text/css">
    .avatar{
        border-radius: 100%;max-width: 100px;
    }
</style>
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            @if(count($errors))
                @foreach($errors->all() as $error)
                    <div class = "alert alert-danger">{{$error}}</div>
                @endforeach 
            @endif
            @if(session('response'))
                <div class = "alert alert-success">{{session('response')}}</div>
            @endif  
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class = "col-md-4">
                        @if(!empty($profile))
                            <img src = "{{$profile->profile_pic}}" alt="" class="avatar" />
                        @else
                          <img src = "{{url('images/avatar.png')}}" alt="" class="avatar" />
                        @endif  
                    </div>
                     @if(!empty($profile))
                        <p class = "text-left">
                            <a href = "{{route('profile.edit')}}" class = "btn btn-lg btn-info">Edit your profile</a>
                        </p>
                    @else
                        <p class = "text-left"></p>
                    @endif    
                    <div class = "col-md-8">
                         @if(!empty($profile))
                            <p class = "lead">{{$profile->name}}</p>
                        @else
                          <p class = "lead"></p>
                        @endif
                        @if(!empty($profile))
                            <p class = "lead">{{$profile->designation}}</p>
                        @else
                          <p class = "lead"></p>
                        @endif 

                        @if(!empty($profile))
                            <p class = "lead">{{$profile->about}}</p>
                        @else
                          <p class = "lead"></p>
                        @endif 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
