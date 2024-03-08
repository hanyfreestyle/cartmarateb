@extends('web.layouts.app')
@section('content')
<div class="container">
    <div class="row ">
        @foreach($blogs as $blog)
            <div class="col-lg-4">
                <div class="ListDemo">
                    <div class="blog_phoro">
                        <x-site.def.img :row="$blog" def="developer"  />
                    </div>
                </div>
{{--                {{route('brandsView',$brand->slug)}}--}}
                <h2 class="def_h2"><a href="#">{{$blog->name}}</a></h2>



            </div>

        @endforeach
    </div>

</div>


@endsection
