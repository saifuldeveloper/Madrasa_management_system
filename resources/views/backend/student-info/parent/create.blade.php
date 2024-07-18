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
                        <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ ___('common.home') }}</a></li>
                        <li class="breadcrumb-item" aria-current="page"><a
                                href="{{ route('parent.index') }}">{{ $data['title'] }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ ___('common.add_new') }}</li>
                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}

        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('parent.store') }}" enctype="multipart/form-data" method="post" id="visitForm">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-lg-12">
                            {{-- father --}}
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.father_name') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('father_name') is-invalid @enderror" name="father_name"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_father_name') }}" type="text" value="{{ old('father_name') }}">
                                    @error('father_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.father_mobile') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('father_mobile') is-invalid @enderror" name="father_mobile"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_father_mobile') }}" type="text" value="{{ old('father_mobile') }}">
                                    @error('father_mobile')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.father_profession') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('father_profession') is-invalid @enderror" name="father_profession"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_father_profession') }}" type="text" value="{{ old('father_profession') }}">
                                    @error('father_profession')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                
                                <div class="col-md-3 mb-3">

                                    <label class="form-label" for="inputImage">{{ ___('student_info.father_image') }} {{ ___('common.(95 x 95 px)') }}</label>
                                    <div class="ot_fileUploader left-side mb-3">
                                        <input class="form-control" type="text" placeholder="{{ ___('student_info.father_image') }}" readonly="" id="placeholder">
                                        <button class="primary-btn-small-input" type="button">
                                            <label class="btn btn-lg ot-btn-primary" for="fileBrouse">{{ ___('common.browse') }}</label>
                                            <input type="file" class="d-none form-control" name="father_image" id="fileBrouse" accept="image/*">
                                        </button>
                                    </div>

                                </div>
                            </div>
                            {{-- end father --}}
                            {{-- mother --}}
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.mother_name') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('mother_name') is-invalid @enderror" name="mother_name"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_mother_name') }}" type="text" value="{{ old('mother_name') }}">
                                    @error('mother_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.mother_mobile') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('mother_mobile') is-invalid @enderror" name="mother_mobile"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_mother_mobile') }}" type="text" value="{{ old('mother_mobile') }}">
                                    @error('mother_mobile')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.mother_profession') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('mother_profession') is-invalid @enderror" name="mother_profession"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_father_profession') }}" type="text" value="{{ old('mother_profession') }}">
                                    @error('mother_profession')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">

                                    <label class="form-label" for="inputImage">{{ ___('student_info.mother_image') }} {{ ___('common.(95 x 95 px)') }}</label>
                                    <div class="ot_fileUploader left-side mb-3">
                                        <input class="form-control" type="text" placeholder="{{ ___('student_info.mother_image') }}" readonly="" id="placeholder2">
                                        <button class="primary-btn-small-input" type="button">
                                            <label class="btn btn-lg ot-btn-primary" for="fileBrouse2">{{ ___('common.browse') }}</label>
                                            <input type="file" class="d-none form-control" name="mother_image" id="fileBrouse2" accept="image/*">
                                        </button>
                                    </div>

                                </div>
                            </div>
                            {{-- end mother --}}
                            {{-- guardian --}}
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.guardian_name') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('guardian_name') is-invalid @enderror" name="guardian_name"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_guardian_name') }}" type="text" value="{{ old('guardian_name') }}">
                                    @error('guardian_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.guardian_mobile') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('guardian_mobile') is-invalid @enderror" name="guardian_mobile"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_guardian_mobile') }}" type="text" value="{{ old('guardian_mobile') }}">
                                    @error('guardian_mobile')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.guardian_profession') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('guardian_profession') is-invalid @enderror" name="guardian_profession"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_guardian_profession') }}" type="text" value="{{ old('guardian_profession') }}">
                                    @error('guardian_profession')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">

                                    <label class="form-label" for="inputImage">{{ ___('student_info.guardian_image') }} {{ ___('common.(95 x 95 px)') }}</label>
                                    <div class="ot_fileUploader left-side mb-3">
                                        <input class="form-control" type="text" placeholder="{{ ___('student_info.guardian_image') }}" readonly="" id="placeholder3">
                                        <button class="primary-btn-small-input" type="button">
                                            <label class="btn btn-lg ot-btn-primary" for="fileBrouse3">{{ ___('common.browse') }}</label>
                                            <input type="file" class="d-none form-control" name="guardian_image" id="fileBrouse3" accept="image/*">
                                        </button>
                                    </div>

                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.guardian_email') }}</label>
                                    <input class="form-control ot-input @error('guardian_email') is-invalid @enderror" name="guardian_email"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_guardian_email') }}" type="email" value="{{ old('guardian_email') }}">
                                    @error('guardian_email')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.guardian_address') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('guardian_address') is-invalid @enderror" name="guardian_address"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_guardian_address') }}" type="text" value="{{ old('guardian_address') }}">
                                    @error('guardian_address')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.guardian_relation') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('guardian_relation') is-invalid @enderror" name="guardian_relation"
                                        list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_guardian_relation') }}" type="text" value="{{ old('guardian_relation') }}">
                                    @error('guardian_relation')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label class="form-label">{{ ___('frontend.Father_Nationality') }}
                                        @if (is_required('father_nationality'))
                                            <span class="text-danger">*</span>
                                        @endif </label>
                                    <input name="father_nationality"
                                        placeholder="{{ ___('frontend.Father_Nationality') }}"
                                        class="email form-control ot-input @error('guardian_relation') is-invalid @enderror" type="text"
                                        @if (is_required('father_nationality')) required @endif>
                                </div>
                                <div class="col-md-3">

                                    <label for="validationServer04" class="form-label">{{ ___('student_info.status') }} <span class="fillable">*</span></label>
                                    <select class="nice-select niceSelect bordered_style wide @error('status') is-invalid @enderror"
                                    name="status" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                        <option value="{{ App\Enums\Status::ACTIVE }}">{{ ___('common.active') }}</option>
                                        <option value="{{ App\Enums\Status::INACTIVE }}">{{ ___('common.inactive') }}
                                        </option>
                                    </select>

                                    @error('status')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror

                                </div>
                            </div>
                            {{-- end guardian --}}
                            <div class="row">
                                
                                <div class="col-md-12 mt-24">
                                    <div class="text-end">
                                        <button class="btn btn-lg ot-btn-primary"><span><i class="fa-solid fa-save"></i>
                                            </span>{{ ___('student_info.submit') }}</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
