@extends('layouts.app')
 @section('content')
 <div class = "container">
 	<div class = "row">
 		<div class = "col-md-8 col-md-offset-2">
 			
 			<div class = "panel panel-default">
 				<div class = "panel-heading">Profile</div>
 				<div class = "panel-body">
					<form method="POST" action="{{ url('/addprofile') }}" enctype = "multipart/form-data">
                        @csrf

                        <div class="form-group row">
                            <label for="designation" class="col-md-4 col-form-label text-md-right">{{ __('Enter Designation') }}</label>

                            <div class="col-md-6">
                                <input id="designation" type="text" class="form-control{{ $errors->has('designation') ? ' is-invalid' : '' }}" name="designation" value="{{ old('designation') }}" required autofocus>

                                @if ($errors->has('designation'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('designation') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="about" class="col-md-4 col-form-label text-md-right">{{ __('About') }}</label>

                            <div class="col-md-6">
								<textarea class="form-control{{ $errors->has('about') ? ' is-invalid' : '' }}" name="about" required rows="3" id="about"></textarea>
                                @if ($errors->has('about'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('about') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="profile_pic" class="col-md-4 col-form-label text-md-right">{{ __('Profile Photo') }}</label>

                            <div class="col-md-6">
                                <img src = "{{url('images/avatar.png')}}" alt="" class="avatar" height="200" width="200" id = "imagePreview"/>
								<input onchange = "ShowImagePreview(this, document.getElementById('imagePreview'))" name="profile_pic" type="file" class="form-control-file" id="exampleFormControlFile1" required>
                             @if ($errors->has('profile_pic'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('profile_pic') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary btn-lg">
                                    {{ __('Add Profile') }}
                                </button>
                            </div>
                        </div>
                    </form>
 				</div>
 			</div>
 		</div>
 	</div>
 </div>
 @endsection

 <script type="text/javascript">

    function ShowImagePreview(imageUploader, previewImage) {
        if (imageUploader.files && imageUploader.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $(previewImage).attr('src', e.target.result);
            }
            reader.readAsDataURL(imageUploader.files[0]);
        }
    }
 </script>