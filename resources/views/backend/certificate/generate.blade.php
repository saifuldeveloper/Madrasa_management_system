@extends('backend.master')

@section('title')
{{ @$data['title'] }}
@endsection

@section('css')

@endsection

@section('content')
<div class="page-content">
    {{-- bradecrumb Area S t a r t --}}
    <div class="page-header">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="bradecrumb-title mb-1">{{ @$data['title'] }}</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">{{ ___('common.home') }}</a></li>
                        <li class="breadcrumb-item">{{ @$data['title'] }}</li>
                    </ol>
            </div>
        </div>
    </div>
    {{-- bradecrumb Area E n d --}}

    <div class="row">
        <div class="col-12">
            <form action="{{ route('certificate.generate.search') }}" method="post" id="marksheet" enctype="multipart/form-data">
                @csrf
                <div class="card ot-card mb-24 position-relative z_1">
                    <div class="card-header d-flex align-items-center gap-4 flex-wrap">
                        <h3 class="mb-0">{{ ___('common.Filtering') }}</h3>

                        <div class="card_header_right d-flex align-items-center gap-3 flex-fill justify-content-end flex-wrap">
                            <!-- table_searchBox -->

                            <div class="single_large_selectBox">
                                <select id="getSections" class="class nice-select niceSelect bordered_style wide @error('class') is-invalid @enderror" name="class">
                                    <option value="">{{ ___('student_info.select_class') }} *</option>
                                    @foreach ($data['classes'] as $item)
                                    <option {{ old('class', @$data['student']->session_class_student->class->id) == $item->id ? 'selected' : '' }} value="{{ $item->class->id }}">{{ $item->class->name }}</option>
                                    @endforeach
                                </select>
                                @error('class')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <div class="single_large_selectBox">
                                <select class="sections section nice-select niceSelect bordered_style wide @error('section') is-invalid @enderror" name="section">
                                    <option value="">{{ ___('student_info.select_section') }} *</option>

                                </select>
                                @error('section')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>



                            <div class="single_large_selectBox">
                                <select class="students nice-select niceSelect bordered_style wide @error('student') is-invalid @enderror" name="student">
                                    <option value="">{{ ___('student_info.select_student') }}</option>

                                </select>
                            </div>

                            <div class="single_large_selectBox">
                                <select class="nice-select niceSelect bordered_style wide certificate @error('certificate') is-invalid @enderror" name="certificate">
                                    <option value="">{{ ___('examination.select certificate') }} *</option>
                                    @foreach ($data['certificates'] as $item)
                                    <option value="{{ $item->id }}">{{ $item->title }}</option>
                                    @endforeach
                                </select>
                                @error('certificate')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>

                            <button class="btn btn-lg ot-btn-primary" type="submit">
                                {{ ___('common.Search') }}
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        @if(isset($data['students']))

        @php
        $words = explode(' ', $data['certificate']->title);
        // Get the first word (index 0) from the array
        $firstWord = $words[0];
        $restofWord = Str::replace($words[0], '', $data['certificate']->title);
        @endphp

        <div class="col-md-12">

            <div class="preview_box_wrapper  ">
                <div class="download_print_btns">
                    <button class="btn btn-lg ot-btn-primary" onclick="printDiv('printableArea')">
                        {{___('common.print_now')}}
                        <span><i class="fa-solid fa-print"></i></span>
                    </button>
                </div>

                <div class="preview_box print-view">

                    <div id="printableArea" class="row">
                        @include('backend.certificate.printCertificate')
                    </div>
                </div>

            </div>
        </div>

        @endif

    </div>
</div>
@endsection