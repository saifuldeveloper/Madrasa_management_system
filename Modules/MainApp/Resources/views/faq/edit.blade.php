@extends('mainapp::layouts.backend.master')

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
                        <li class="breadcrumb-item"><a href="{{ route('faq.index') }}">{{ ___('settings.faqs') }}</a></li>
                        <li class="breadcrumb-item">{{ ___('common.edit') }}</li>

                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}
        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('faq.update', @$data['faq']->id) }}" enctype="multipart/form-data" method="post"
                    id="visitForm">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="exampleDataList" class="form-label">{{ ___('common.Question') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('question') is-invalid @enderror" name="question" 
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('common.Enter question') }}" value="{{ old('question', @$data['faq']->question) }}">
                            @error('question')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                                
                                                        
                        <div class="col-md-4 mb-3">
                            <label for="exampleDataList" class="form-label">{{ ___('common.Position') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('position') is-invalid @enderror" name="position" type="number"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('common.Enter position') }}" value="{{ old('position', @$data['faq']->position) }}">
                            @error('position')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                                            
                        <div class="col-md-4 mb-3">
                            <label for="validationServer04" class="form-label">{{ ___('common.status') }} <span class="fillable">*</span></label>
                            <select class="nice-select niceSelect bordered_style wide @error('status') is-invalid @enderror"
                            name="status" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option {{ old('status', @$data['faq']->status) == App\Enums\Status::ACTIVE ? 'selected':'' }} value="{{ App\Enums\Status::ACTIVE }}">{{ ___('common.active') }}</option>
                                <option {{ old('status', @$data['faq']->status) == App\Enums\Status::INACTIVE ? 'selected':'' }} value="{{ App\Enums\Status::INACTIVE }}">{{ ___('common.inactive') }}
                                </option>
                            </select>

                            @error('status')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                                                    
                        <div class="col-12 mb-3">
                            <label for="exampleDataList" class="form-label">{{ ___('common.Answer') }} <span
                                    class="fillable">*</span></label>
                            <textarea id="summernote" class="mt-0 form-control ot-textarea @error('answer') is-invalid @enderror" name="answer" list="datalistOptions" id="exampleDataList"
                                    placeholder="{{ ___('common.Enter answer') }}">{{ old('answer',@$data['faq']->answer) }}</textarea>
                            @error('answer')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>


                        <div class="col-md-12 mt-24">
                            <div class="text-end">
                                <button class="btn btn-lg ot-btn-primary"><span><i class="fa-solid fa-save"></i>
                                    </span>{{ ___('common.submit') }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
