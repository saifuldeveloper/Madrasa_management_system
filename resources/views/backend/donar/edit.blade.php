@extends('backend.master')

@section('title')
    {{ @$data['title'] }}
@endsection
@section('content')
    <div class="page-content">

        {{-- bradecrumb Area S t a r t --}}
        <div class="page-header">
            <div class="row">
                <div class="col-sm-6">
                    <h4 class="bradecrumb-title mb-1">{{ $data['title'] }}</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('dashboard') }}"> {{ ___('common.home') }} </a></li>
                        <li class="breadcrumb-item"><a href="{{ route('religions.index') }}">{{ $data['title'] }}</a></li>
                        <li class="breadcrumb-item">{{ ___('common.edit') }}</li>

                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}

        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('donar.update', @$data['donar']->id) }}" enctype="multipart/form-data" method="post"
                    id="visitForm">
                    @csrf
                    @method('PUT')
                    <div class="row mb-3">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-md-6 mb-3">

                                  
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.name') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('name') is-invalid @enderror" name="name"
                                        value="{{ old('name',@$data['donar']->name) }}" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_name') }}" >
                                    @error('name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.mobile') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('mobile') is-invalid @enderror" name="mobile"
                                        list="datalistOptions" id="exampleDataList"  value="{{ old('name',@$data['donar']->number) }}"
                                        placeholder="{{ ___('common.enter_mobile') }}">
                                    @error('mobile')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.email') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('email') is-invalid @enderror" name="email"

                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_email') }}"  value="{{ old('name',@$data['donar']->email) }}">
                                    @error('email')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.present_address') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('present_address') is-invalid @enderror" name="present_address"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_present_address') }}" value="{{ @$data['donar']->present_address }}">
                                    @error('present_address')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.parmanent_address') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('parmanent_address') is-invalid @enderror" name="parmanent_address"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_parmanent_address') }}" value="{{ @$data['donar']->parmanent_address}}">
                                    @error('parmanent_address')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-md-6">
                                    {{-- Status  --}}
                                    <label for="validationServer04" class="form-label">{{ ___('common.status') }} <span class="fillable">*</span></label>

                                    <select class="nice-select niceSelect bordered_style wide @error('status') is-invalid @enderror"
                                    name="status" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">

                                        <option value="{{ App\Enums\DonationType::REGULAR }}"
                                            {{ @$data['student_category']->status == App\Enums\DonationType::REGULAR ? 'selected' : '' }}>
                                            {{ ___('common.regular') }}</option>
                                        <option value="{{ App\Enums\DonationType::IREGULAR }}"
                                            {{ @$data['student_category']->status == App\Enums\DonationType::IREGULAR ? 'selected' : '' }}>
                                            {{ ___('common.iregular') }}
                                        </option>
                                        <option value="{{ App\Enums\DonationType::MONTHLY }}"
                                            {{ @$data['student_category']->status == App\Enums\DonationType::MONTHLY ? 'selected' : '' }}>
                                            {{ ___('common.iregular') }}
                                        </option>
                                    </select>
                                </div>
                                @error('status')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                                <div class="col-md-12 mt-24">
                                    <div class="text-end">
                                        <button class="btn btn-lg ot-btn-primary"><span><i class="fa-solid fa-save"></i>
                                            </span>{{ ___('common.update') }}</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
@endsection
