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
                        <li class="breadcrumb-item" aria-current="page"><a href="{{ route('users.index') }}">{{ ___('staff.staff') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ ___('common.add_new') }}</li>
                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}
        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('users.store') }}" enctype="multipart/form-data" method="post" id="visitForm">
                    @csrf
                    <div class="row mb-3">

                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.staff_id') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('staff_id') is-invalid @enderror" name="staff_id" value="{{ old('staff_id') }}"
                                list="datalistOptions" id="exampleDataList" type="number"
                                placeholder="{{ ___('staff.enter_staff_id') }}">
                            @error('staff_id')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="validationServer04"
                            class="form-label">{{ ___('common.roles') }} <span
                            class="fillable">*</span></label>
                            <select class="nice-select niceSelect bordered_style wide @error('role') is-invalid @enderror change-role"
                            name="role" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option value="">{{ ___('staff.select_role') }}</option>
                                @foreach ($data['roles'] as $role)
                                    <option {{ old('role') == $role->id ? 'selected':'' }} value="{{ $role->id }}">{{ $role->name }}</option>
                                @endforeach
                            </select>
                            @error('role')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="validationServer04"
                            class="form-label">{{ ___('staff.designations') }} <span
                            class="fillable">*</span></label>
                            <select class="nice-select niceSelect bordered_style wide @error('designation') is-invalid @enderror change-designation"
                            name="designation" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option value="">{{ ___('staff.select_designation') }}</option>
                                @foreach ($data['designations'] as $designation)
                                    <option {{ old('designation') == $designation->id ? 'selected':'' }} value="{{ $designation->id }}">{{ $designation->name }}</option>
                                @endforeach
                            </select>
                            @error('designation')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="validationServer04"
                            class="form-label">{{ ___('staff.departments') }} <span
                            class="fillable">*</span></label>
                            <select class="nice-select niceSelect bordered_style wide @error('department') is-invalid @enderror change-department"
                            name="department" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option value="">{{ ___('staff.select_department') }}</option>
                                @foreach ($data['departments'] as $department)
                                    <option {{ old('department') == $department->id ? 'selected':'' }} value="{{ $department->id }}">{{ $department->name }}</option>
                                @endforeach
                            </select>
                            @error('department')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.first_name') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_first_name') }}">
                            @error('first_name')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.last_name') }} </label>
                            <input class="form-control ot-input @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_last_name') }}">
                            @error('last_name')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.father_name') }} </label>
                            <input class="form-control ot-input @error('father_name') is-invalid @enderror" name="father_name" value="{{ old('father_name') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_father_name') }}">
                            @error('father_name')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.mother_name') }} </label>
                            <input class="form-control ot-input @error('mother_name') is-invalid @enderror" name="mother_name" value="{{ old('mother_name') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_mother_name') }}">
                            @error('mother_name')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleInputEmail1" class="form-label">{{ ___('common.email') }} <span
                                    class="fillable">*</span></label>
                            <input type="email" name="email" value="{{ old('email') }}"
                                class="form-control ot-input  @error('email') is-invalid @enderror"
                                id="exampleInputEmail1" aria-describedby="emailHelp"
                                placeholder="{{ ___('common.enter_your_email') }}">
                            @error('email')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="validationServer04"
                            class="form-label">{{ ___('staff.genders') }} <span
                            class="fillable">*</span></label>
                            <select class="nice-select niceSelect bordered_style wide @error('gender') is-invalid @enderror change-gender"
                            name="gender" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option value="">{{ ___('staff.select_gender') }}</option>
                                @foreach ($data['genders'] as $gender)
                                    <option {{ old('gender') == $gender->id ? 'selected':'' }} value="{{ $gender->id }}">{{ $gender->name }}</option>
                                @endforeach
                            </select>
                            @error('gender')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.date_of_birth') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('dob') is-invalid @enderror" name="dob" value="{{ old('dob') }}"
                                list="datalistOptions" id="exampleDataList" type="date"
                                placeholder="{{ ___('staff.enter_date_of_birth') }}">
                            @error('dob')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.joining_date') }} </label>
                            <input class="form-control ot-input @error('joining_date') is-invalid @enderror" name="joining_date" value="{{ old('joining_date') }}"
                                list="datalistOptions" id="exampleDataList" type="date"
                                placeholder="{{ ___('staff.enter_joining_date') }}">
                            @error('joining_date')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.phone') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_phone') }}">
                            @error('phone')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.emergency_contact') }} </label>
                            <input class="form-control ot-input @error('emergency_contact') is-invalid @enderror" name="emergency_contact" value="{{ old('emergency_contact') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_emergency_contact') }}">
                            @error('emergency_contact')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="validationServer04" class="form-label">{{ ___('staff.marital_status') }} </label>
                            <select class="nice-select niceSelect bordered_style wide @error('marital_status') is-invalid @enderror"
                            name="marital_status" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option {{ old('marital_status') == App\Enums\MaritalStatus::UNMARRIED ? 'selected':'' }} value="{{ App\Enums\MaritalStatus::UNMARRIED }}">{{ ___('staff.unmarried') }}</option>
                                <option {{ old('marital_status') == App\Enums\MaritalStatus::MARRIED ? 'selected':'' }} value="{{ App\Enums\MaritalStatus::MARRIED }}">{{ ___('staff.married') }}</option>
                            </select>

                            @error('marital_status')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="validationServer04" class="form-label">{{ ___('common.status') }} <span class="fillable">*</span></label>
                            <select class="nice-select niceSelect bordered_style wide @error('status') is-invalid @enderror"
                            name="status" id="validationServer04"
                            aria-describedby="validationServer04Feedback">
                                <option {{ old('status') == App\Enums\Status::ACTIVE ? 'selected':'' }} value="{{ App\Enums\Status::ACTIVE }}">{{ ___('common.active') }}</option>
                                <option {{ old('status') == App\Enums\Status::INACTIVE ? 'selected':'' }} value="{{ App\Enums\Status::INACTIVE }}">{{ ___('common.inactive') }}</option>
                            </select>

                            @error('status')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label class="form-label" for="inputImage">{{ ___('common.image') }} {{ ___('common.(95 x 95 px)') }}</label>
                            <div class="ot_fileUploader left-side">
                                <input class="form-control" type="text" placeholder="{{ ___('common.image') }}" readonly="" id="placeholder">
                                <button class="primary-btn-small-input" type="button">
                                    <label class="btn btn-lg ot-btn-primary" for="fileBrouse">{{ ___('common.browse') }}</label>
                                    <input type="file" class="d-none form-control" name="image" id="fileBrouse">
                                </button>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.current_address') }} </label>
                            <input class="form-control ot-input @error('current_address') is-invalid @enderror" name="current_address" value="{{ old('current_address') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_current_address') }}">
                            @error('current_address')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.permanent_address') }} </label>
                            <input class="form-control ot-input @error('permanent_address') is-invalid @enderror" name="permanent_address" value="{{ old('permanent_address') }}"
                                list="datalistOptions" id="exampleDataList"
                                placeholder="{{ ___('staff.enter_permanent_address') }}">
                            @error('permanent_address')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-lg-3 col-md-6 mb-3">
                            <label for="exampleDataList" class="form-label ">{{ ___('staff.basic_salary') }} <span
                                    class="fillable">*</span></label>
                            <input class="form-control ot-input @error('basic_salary') is-invalid @enderror" name="basic_salary" value="{{ old('basic_salary') }}"
                                list="datalistOptions" id="exampleDataList" type="number"
                                placeholder="{{ ___('staff.enter_basic_salary') }}">
                            @error('basic_salary')
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>





                       





                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="d-flex align-items-center gap-4 flex-wrap">
                                <p class="m-0 flex-fill">
                                    {{ ___('student_info.upload_documents') }}
                                </p>
                                <button type="button" class="btn btn-lg ot-btn-primary radius_30px addNewDocument"
                                    onclick="addNewDocument()">
                                    <span><i class="fa-solid fa-plus"></i> </span>
                                    {{ ___('common.add') }}</button>
                                    <input type="hidden" name="counter" id="counter" value="0">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table class="table school_borderLess_table" id="student-document">
                                    <thead>
                                        <tr>
                                            <td scope="col">{{ ___('common.name') }} <span
                                                    class="text-danger"></span>
                                                @if ($errors->any())
                                                    @if ($errors->has('document_names.*'))
                                                        <span class="text-danger">{{ 'the fields are required' }}
                                                    @endif
                                                @endif
                                            </td>
                                            <td scope="col">
                                                {{ ___('student_info.document') }}
                                                <span class="text-danger"></span>
                                                @if ($errors->any())
                                                    @if ($errors->has('document_files.*'))
                                                        <span class="text-danger">{{ 'The fields are required' }}
                                                    @endif
                                                @endif
                                            </td>
                                            <td scope="col">

                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
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
@endsection
