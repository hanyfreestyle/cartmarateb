@extends('web.layouts.app')
@section('content')
<div class="container">
    <div class="row ">
        @foreach($brands as $brand)
            <div class="col-lg-2">
                <div class="ListDemo">
                    <div class="brand_img_div">
                        <x-site.def.img :row="$brand" def="developer"  />
                    </div>
                </div>
{{--                {{route('brandsView',$brand->slug)}}--}}
                <h2 class="def_h2"><a href="#">{{$brand->name}}</a></h2>



            </div>

        @endforeach
    </div>

</div>


@endsection
