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
                                href="{{ route('notice-board.index') }}">{{ ___('common.notice_board') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ $data['title'] }}</li>
                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}
        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('notice-board.update', [$data['notice-board']->id]) }}" enctype="multipart/form-data" method="post" id="markRegister">
                    @csrf
                    @method('PUT')
                    <div class="row mb-3">
                        <div class="col-lg-12">
                            <div class="row">

                                <div class="col-md-4 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.title') }} <span
                                        class="fillable">*</span> </label>
                                    <input class="form-control ot-input @error('title') is-invalid @enderror" name="title"
                                        value="{{ old('title', $data['notice-board']->title) }}" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('account.enter_title') }}">
                                    @error('title')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-md-4 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.publish_date') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('publish_date') is-invalid @enderror" name="publish_date" type="datetime-local"
                                        list="datalistOptions" id="exampleDataList" type="text"
                                        placeholder="{{ ___('common.publish_date') }}" value="{{ old('publish_date', $data['notice-board']->publish_date) }}">
                                    @error('publish_date')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.date') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('date') is-invalid @enderror" name="date" type="date"
                                        list="datalistOptions" id="exampleDataList" type="text"
                                        placeholder="{{ ___('common.date') }}" value="{{ old('date', $data['notice-board']->date) }}">
                                    @error('date')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                               
                 
                                <div class="col-md-4">
                                    <label for="exampleDataList"
                                        class="form-label ">{{ ___('common.attachment') }} <span
                                            class="fillable"></span></label>
                                    <div class="ot_fileUploader left-side mb-3">
                                        <input class="form-control" type="text"
                                            placeholder="{{ ___('common.attachment') }}" readonly="" id="placeholder">
                                        <button class="primary-btn-small-input" type="button">
                                            <label class="btn btn-lg ot-btn-primary"
                                                for="fileBrouse">{{ ___('common.browse') }}</label>
                                            <input type="file" class="d-none form-control" accept="image/*" name="attachment"
                                                id="fileBrouse">
                                        </button>
                                    </div>
                                </div>

                                <div class="col-md-4 mb-3">

                                    <label for="validationServer04" class="form-label">{{ ___('common.status') }} <span class="fillable">*</span></label>
                                    <select class="nice-select niceSelect bordered_style wide @error('status') is-invalid @enderror"
                                    name="status" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="{{ App\Enums\Status::ACTIVE }}"
                                            {{ @$data['notice-board']->status == App\Enums\Status::ACTIVE ? 'selected' : '' }}>
                                            {{ ___('common.active') }}</option>
                                        <option value="{{ App\Enums\Status::INACTIVE }}"
                                            {{ @$data['notice-board']->status == App\Enums\Status::INACTIVE ? 'selected' : '' }}>
                                            {{ ___('common.inactive') }}
                                        </option>
                                    </select>

                                    @error('status')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror

                                </div>
                                <div class="col-md-4 mb-3">
                                    <label class="form-label">{{ ___('common.is_visible_web') }} ?<span class="fillable"></span></label>
                                    <div class="input-check-radio academic-section @error('sections') is-invalid @enderror">
                                        <div class="form-check">
                                          <input class="form-check-input" type="radio" name="is_visible_web" value="1" {{$data['notice-board']->is_visible_web == 1? 'checked':''}} id="flexCheckDefault-1" />
                                          <label class="form-check-label ps-2 pe-5" for="flexCheckDefault-1">{{ ___('academic.yes') }}</label>
                                        </div>
                                        <div class="form-check">
                                          <input class="form-check-input" type="radio" name="is_visible_web" value="0" {{$data['notice-board']->is_visible_web == 0? 'checked':''}} id="flexCheckDefault-0" />
                                          <label class="form-check-label ps-2 pe-5" for="flexCheckDefault-0">{{ ___('academic.no') }}</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-12 mb-3">
                                    <label for="summernote" class="form-label ">{{ ___('account.description') }} <span class="fillable">*</span></label>
                                    <textarea class="form-control ot-textarea @error('description') is-invalid @enderror" name="description"
                                    list="datalistOptions" id="summernote"
                                    placeholder="{{ ___('account.enter_description') }}">{{ old('description', $data['notice-board']->description) }}</textarea>
                                    @error('description')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="col-md-12 mb-3">
                                    <label class="form-label">{{ ___('common.visible_to') }}<span class="fillable"></span></label>
                                    <div class="input-check-radio academic-section @error('sections') is-invalid @enderror">
                                        @foreach ($data['roles'] as $item)
                                            
                                        <div class="form-check">
                                          <input class="form-check-input" type="checkbox" name="visible_to[]" value="{{ $item->id }}" {{$data['notice-board']->visible_to?in_array($item->id, $data['notice-board']->visible_to) ? 'checked':'':''}}  id="flexCheckDefault-1" />
                                          <label class="form-check-label ps-2 pe-5" for="flexCheckDefault-1">{{ $item->name }}</label>
                                        </div>
                                        @endforeach

                                    </div>
                                </div>

                                <div class="col-md-12 mt-24">
                                    <div class="text-end">
                                        <button class="btn btn-lg ot-btn-primary"><span><i class="fa-solid fa-save"></i>
                                            </span>{{ ___('common.submit') }}</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
@endsection
