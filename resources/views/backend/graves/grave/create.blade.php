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
                                    href="{{ route('graveslist.index') }}">{{ ___('common.graves_list') }}</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{ ___('common.add_new') }}</li>
                        </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}
        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('graveslist.store') }}" enctype="multipart/form-data" method="post" id="visitForm">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-lg-12">
                            <div class="row">
                                <h5 style="background: #3249A9;color: white;padding: 10px;">{{ ___('common.dead_person_information') }}</h5>
                                {{-- <div class="col-md-3">
                                    <label for="validationServer04" class="form-label">{{ ___('common.graves_row') }}
                                        <span class="fillable">*</span></label>
                                    <select id="getSections"
                                        class="nice-select niceSelect bordered_style wide @error('graves_row') is-invalid @enderror"
                                        name="graves_row" id="validationServer04"
                                        aria-describedby="validationServer04Feedback">
                                        <option value="">{{ ___('common.graves_row') }}</option>
                                        @foreach ($data['graves_row'] as $item)
                                            <option {{ old('graves_row') == $item->id ? 'selected' : '' }}
                                                value="{{ $item->id }}">{{ $item->name }}
                                        @endforeach
                                        </option>
                                    </select>

                                    @error('class')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror

                                </div> --}}
                                {{-- <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.grave_no') }} <span
                                            class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('grave_no') is-invalid @enderror"
                                        type="number" name="grave_no" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_grave_no') }}" value="{{ old('grave_no') }}">
                                    @error('grave_no')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div> --}}
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.name') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('first_name') is-invalid @enderror"
                                        name="first_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_name') }}"
                                        value="{{ old('first_name') }}">
                                    @error('first_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                {{-- <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.last_name') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('last_name') is-invalid @enderror"
                                        name="last_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_last_name') }}"
                                        value="{{ old('last_name') }}">
                                    @error('last_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div> --}}
                                <div class="col-md-3">
                                    <label for="validationServer04" class="form-label">{{ ___('common.gender') }} <span
                                            class="fillable"></span></label>
                                    <select
                                        class="nice-select niceSelect bordered_style wide @error('gender') is-invalid @enderror"
                                        name="gender" id="validationServer04"
                                        aria-describedby="validationServer04Feedback">
                                        <option value="">{{ ___('student_info.select_gender') }}</option>
                                        @foreach ($data['genders'] as $item)
                                            <option {{ old('gender') == $item->id ? 'selected' : '' }}
                                                value="{{ $item->id }}">{{ $item->name }}
                                        @endforeach
                                    </select>
                                    @error('gender')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                {{-- <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.date_of_birth') }}
                                        <span class="fillable">*</span></label>
                                    <input type="date"
                                        class="form-control ot-input @error('date_of_birth') is-invalid @enderror"
                                        name="date_of_birth" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.date_of_birth') }}"
                                        value="{{ old('date_of_birth') }}">
                                    @error('date_of_birth')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div> --}}
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.date_of_burial') }}
                                        <span class="fillable">*</span></label>
                                    <input type="date"
                                        class="form-control ot-input @error('date_of_burial') is-invalid @enderror"
                                        name="date_of_burial" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.date_of_burial') }}"
                                        value="{{ old('date_of_burial') }}">
                                    @error('date_of_burial')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label class="form-label">{{ ___('common.address') }} </label>
                                    <input name="address" placeholder="{{ ___('common.address') }}"
                                        class="email form-control ot-input mb_30" type="text">
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.father_name') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('father_name') is-invalid @enderror"
                                        name="father_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_father_name') }}"
                                        value="{{ old('father_name') }}">
                                    @error('father_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.mother_name') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('mother_name') is-invalid @enderror"
                                        name="mother_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_mother_name') }}"
                                        value="{{ old('mother_name') }}">
                                    @error('mother_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.husband_name') }}
                                        <span class="fillable"></span></label>
                                    <input class="form-control ot-input @error('husband_name') is-invalid @enderror"
                                        name="husband_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_husband_name') }}"
                                        value="{{ old('husband_name') }}">
                                    @error('husband_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                {{-- <div class="col-md-3">
                                    <label for="validationServer04" class="form-label">{{ ___('student_info.blood') }}
                                        <span class="fillable"></span></label>
                                    <select
                                        class="nice-select niceSelect bordered_style wide @error('blood') is-invalid @enderror"
                                        name="blood" id="validationServer04"
                                        aria-describedby="validationServer04Feedback">
                                        <option value="">{{ ___('student_info.select_blood') }}</option>
                                        @foreach ($data['bloods'] as $item)
                                            <option {{ old('blood') == $item->id ? 'selected' : '' }}
                                                value="{{ $item->id }}">{{ $item->name }}
                                        @endforeach
                                    </select>
                                    @error('blood')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div> --}}
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.note') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('note') is-invalid @enderror"
                                        name="note" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.enter_note') }}"
                                        value="{{ old('note') }}">
                                    @error('note')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <hr>

                                <h5 style="background: #3249A9;color: white;padding: 10px;">{{ ___('common.relative_information') }}</h5>
                                <hr>

                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.name') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('first_name') is-invalid @enderror"
                                        name="relative_frist_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('common.name') }}"
                                        value="{{ old('first_name') }}">
                                    @error('first_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                {{-- <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.last_name') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('last_name') is-invalid @enderror"
                                        name="relative_last_name" list="datalistOptions" id="exampleDataList"
                                        placeholder="{{ ___('student_info.enter_last_name') }}"
                                        value="{{ old('last_name') }}">
                                    @error('last_name')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div> --}}
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('student_info.mobile') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('mobile') is-invalid @enderror"
                                        name="relative_mobile" list="datalistOptions" id="exampleDataList" type="number"
                                        placeholder="{{ ___('student_info.enter_mobile') }}"
                                        value="{{ old('mobile') }}">
                                    @error('mobile')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.email') }} <span
                                            class="fillable"></span></label>
                                    <input class="form-control ot-input @error('email') is-invalid @enderror"
                                        name="relative_email" list="datalistOptions" id="exampleDataList" type="email"
                                        placeholder="{{ ___('student_info.enter_email') }}" value="{{ old('email') }}">
                                    @error('email')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="exampleDataList" class="form-label ">{{ ___('common.name_of_the_relationship') }}
                                        <span class="fillable">*</span></label>
                                    <input class="form-control ot-input @error('name_of_the_relationship') is-invalid @enderror"
                                        name="name_of_the_relationship" list="datalistOptions" id="exampleDataList" type="text"
                                        placeholder="{{ ___('common.name_of_the_relationship') }}" value="{{ old('name_of_the_relationship') }}">
                                    @error('name_of_the_relationship')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label class="form-label">{{ ___('common.present_address') }} </label>
                                    <span class="fillable">*</span></label>
                                    <input name="relative_present_address" placeholder="{{ ___('common.present_address') }}"
                                        class=" form-control ot-input mb_30" type="text">
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label class="form-label">{{ ___('common.parmanent_address') }} </label>
                                    <input name="relative_parmanent_address" placeholder="{{ ___('common.parmanent_address') }}"
                                        class=" form-control ot-input mb_30" type="text">
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-md-12 mt-24">
                                    <div class="text-end">
                                        <button class="btn btn-lg ot-btn-primary"><span><i class="fa-solid fa-save"></i>
                                            </span>{{ ___('common.submit') }}</button>
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

@push('script')
    <script>
        $(document).ready(function() {
            var fileInp1 = document.getElementById("fileBrouse1");
            if (fileInp1) {
                fileInp1.addEventListener("change", showFileName);

                function showFileName(event) {
                    var fileInp = event.srcElement;
                    var fileName = fileInp.files[0].name;
                    document.getElementById("placeholder1").placeholder = fileName;
                }
            }

            function checkCheckboxState() {
                var isChecked = $('#previous_school').prop('checked');
                console.log(isChecked)
                if (isChecked) {
                    $('#previous_school_info').removeClass('d-none');
                    $('#previous_school_doc').removeClass('d-none');
                } else {
                    $('#previous_school_info').addClass('d-none');
                    $('#previous_school_doc').addClass('d-none');
                }
            }

            $('#previous_school').change(checkCheckboxState);
            checkCheckboxState();
        });
    </script>
@endpush
