@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <form action="{{route('avatar.store')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Upload</span>
                    </div>
                    <div class="custom-file">
                        <input type="file" name="avatar" class="custom-file-input" id="inputGroupFile01">
                        <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                    </div>
                    <input type="submit" value="Upload" class="btn btn-success ml-4">
                </div>
            </form>
        </div>
    </div>
        <div class="card-columns">
            @foreach($avatars as $avatar)
          <div class="card">
                <img class="card-img-top" src="{{$avatar->getUrl('thumb')}}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title that wraps to a new line</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
            @endforeach
        </div>
@endsection
