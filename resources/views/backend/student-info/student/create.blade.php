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
                                    href="{{ route('student.index') }}">{{ ___('student_info.student_list') }}</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">{{ ___('common.add_new') }}</li>
                        </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}
        <div class="card ot-card">
            <div class="card-body">
                <form action="{{ route('student.store') }}" enctype="multipart/form-data" method="post"
                    id="visitForm">
                    @csrf
                <div class="row mb-3">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="exampleDataList" class="form-label ">{{ ___('student_info.admission_no') }} <span
                                        class="fillable">*</span></label>
                                <input class="form-control ot-input @error('admission_no') is-invalid @enderror" type="number"
                                    name="admission_no" list="datalistOptions" id="exampleDataList"
                                    placeholder="{{ ___('student_info.enter_admission_no') }}"
                                    value="{{ old('admission_no') }}">
                                @error('admission_no')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="exampleDataList" class="form-label ">{{ ___('student_info.roll_no') }} <span
                                        class="fillable">*</span></label>
                                <input class="form-control ot-input @error('roll_no') is-invalid @enderror"
                                    name="roll_no" list="datalistOptions" id="exampleDataList" type="number"
                                    placeholder="{{ ___('student_info.enter_roll_no') }}" value="{{ old('roll_no') }}">
                                @error('roll_no')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="exampleDataList" class="form-label ">{{ ___('student_info.first_name') }} <span
                                        class="fillable">*</span></label>
                                <input class="form-control ot-input @error('first_name') is-invalid @enderror"
                                    name="first_name" list="datalistOptions" id="exampleDataList"
                                    placeholder="{{ ___('student_info.enter_first_name') }}" value="{{ old('first_name') }}">
                                @error('first_name')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="exampleDataList" class="form-label ">{{ ___('student_info.last_name') }} <span
                                        class="fillable">*</span></label>
                                <input class="form-control ot-input @error('last_name') is-invalid @enderror"
                                    name="last_name" list="datalistOptions" id="exampleDataList"
                                    placeholder="{{ ___('student_info.enter_last_name') }}" value="{{ old('last_name') }}">
                                @error('last_name')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="exampleDataList" class="form-label ">{{ ___('student_info.mobile') }} <span
                                        class="fillable"></span></label>
                                <input class="form-control ot-input @error('mobile') is-invalid @enderror"
                                    name="mobile" list="datalistOptions" id="exampleDataList" type="number"
                                    placeholder="{{ ___('student_info.enter_mobile') }}" value="{{ old('mobile') }}">
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
                                    name="email" list="datalistOptions" id="exampleDataList" type="email"
                                    placeholder="{{ ___('student_info.enter_email') }}" value="{{ old('email') }}">
                                @error('email')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="col-md-3">

                                <label for="validationServer04" class="form-label">{{ ___('student_info.class') }} <span
                                        class="fillable">*</span></label>
                                <select id="getSections"
                                    class="nice-select niceSelect bordered_style wide @error('class') is-invalid @enderror"
                                    name="class" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_class') }}</option>
                                    @foreach ($data['classes'] as $item)
                                        <option {{ old('class') == $item->id ? 'selected':'' }} value="{{ $item->class->id }}">{{ $item->class->name }}
                                    @endforeach
                                    </option>
                                </select>

                                @error('class')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>

                            <div class="col-md-3">
                                <label for="validationServer04" class="form-label">{{ ___('student_info.section') }} <span
                                        class="fillable">*</span></label>
                                <select id="getSections"
                                    class="nice-select sections niceSelect bordered_style wide @error('section') is-invalid @enderror"
                                    name="section" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_section') }}</option>
                                </select>
                                @error('section')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="col-md-3">

                                <label for="validationServer04" class="form-label">{{ ___('student_info.shift') }} <span
                                        class="fillable"></span></label>
                                <select
                                    class="nice-select niceSelect bordered_style wide @error('shift') is-invalid @enderror"
                                    name="shift" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_shift') }}</option>
                                    @foreach ($data['shifts'] as $item)
                                        <option  {{ old('shift') == $item->id ? 'selected':'' }} value="{{ $item->id }}">{{ $item->name }}
                                    @endforeach
                                </select>

                                @error('status')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                            <div class="col-md-3 mb-3">
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
                            </div>
                            {{-- <div class="col-md-3">

                                <label for="validationServer04" class="form-label">{{ ___('student_info.religion') }} <span
                                        class="fillable"></span></label>
                                <select
                                    class="nice-select niceSelect bordered_style wide @error('religion') is-invalid @enderror"
                                    name="religion" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_religion') }}</option>
                                    @foreach ($data['religions'] as $item)
                                        <option {{ old('religion') == $item->id ? 'selected':'' }} value="{{ $item->id }}">{{ $item->name }}
                                    @endforeach
                                </select>

                                @error('religion')
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
                                        <option {{ old('gender') == $item->id ? 'selected':'' }} value="{{ $item->id }}">{{ $item->name }}
                                    @endforeach
                                </select>

                                @error('gender')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                            <div class="col-md-3">

                                <label for="validationServer04" class="form-label">{{ ___('common.category') }} <span
                                        class="fillable"></span></label>
                                <select
                                    class="nice-select niceSelect bordered_style wide @error('category') is-invalid @enderror"
                                    name="category" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_category') }}</option>
                                    @foreach ($data['categories'] as $item)
                                        <option {{ old('category') == $item->id ? 'selected':'' }} value="{{ $item->id }}">{{ $item->name }}
                                    @endforeach
                                </select>

                                @error('category')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                            <div class="col-md-3">

                                <label for="validationServer04" class="form-label">{{ ___('student_info.blood') }} <span
                                        class="fillable"></span></label>
                                <select
                                    class="nice-select niceSelect bordered_style wide @error('blood') is-invalid @enderror"
                                    name="blood" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_blood') }}</option>
                                    @foreach ($data['bloods'] as $item)
                                        <option {{ old('blood') == $item->id ? 'selected':'' }} value="{{ $item->id }}">{{ $item->name }}
                                    @endforeach
                                </select>

                                @error('blood')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="exampleDataList"
                                    class="form-label ">{{ ___('student_info.admission_date') }} <span
                                        class="fillable">*</span></label>
                                <input type="date"
                                    class="form-control ot-input @error('admission_date') is-invalid @enderror"
                                    name="admission_date" list="datalistOptions" id="exampleDataList"
                                    placeholder="{{ ___('student_info.admission_date') }}"
                                    value="{{ old('admission_date') }}">
                                @error('admission_date')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="col-md-3">
                                <label for="exampleDataList"
                                    class="form-label ">{{ ___('common.image') }} {{ ___('common.(100 x 100 px)') }}<span
                                        class="fillable"></span></label>
                                <div class="ot_fileUploader left-side mb-3">
                                    <input class="form-control" type="text"
                                        placeholder="{{ ___('common.image') }}" readonly="" id="placeholder">
                                    <button class="primary-btn-small-input" type="button">
                                        <label class="btn btn-lg ot-btn-primary"
                                            for="fileBrouse">{{ ___('common.browse') }}</label>
                                        <input type="file" class="d-none form-control" name="image"
                                            id="fileBrouse" accept="image/*">
                                    </button>
                                </div>
                            </div>
                            <div class="col-md-3 parent mb-3">

                                <label for="validationServer04" class="form-label">{{ ___('student_info.select_parent') }}
                                    <span class="fillable">*</span></label>
                                <select
                                    class="parent nice-select niceSelect bordered_style wide @error('parent') is-invalid @enderror"
                                    name="parent" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option value="">{{ ___('student_info.select_parent') }}</option>

                                    @foreach ($data['parents'] as $item)
                                        <option {{ old('parents') == $item->id ? 'selected':'' }} value="{{ $item->id }}">{{ $item->guardian_name }}
                                    @endforeach
                                </select>

                                @error('parent')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>

                            <div class="col-md-3 mb-3">
                                <label class="form-label"
                                    for="#">{{ ___('frontend.attend_school_previously') }}  </label>
                                <div class="input-check-radio academic-section mt-3">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="previous_school"
                                            value="1" id="previous_school">
                                        <label class="form-check-label ps-2 pe-5"
                                            for="previous_school">{{ ___('common.Yes') }}</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 d-none mb-3" id="previous_school_info">
                                <label class="form-label"
                                    for="#">{{ ___('frontend.previous_school_information') }}  </label>
                                <textarea class="form-control" rows="2" name="previous_school_info"></textarea>
                                
                            </div>

                            <div class="col-xl-3 d-none mb-3" id="previous_school_doc">
                                <label for="exampleDataList"
                                    class="form-label">{{ ___('frontend.previous_school_documents') }}<span
                                        class="fillable"></span>
                                    
                                </label>

                                <div class="ot_fileUploader left-side mb-3">
                                    <input class="form-control" type="text"
                                        placeholder="{{ ___('common.image') }}" readonly=""
                                        id="placeholder1">
                                    <button class="primary-btn-small-input" type="button">
                                        <label class="btn btn-lg ot-btn-primary"
                                            for="fileBrouse1">{{ ___('common.browse') }}</label>
                                        <input type="file" class="d-none form-control"
                                            name="previous_school_image" id="fileBrouse1" accept="image/*">
                                    </button>
                                </div>

                            </div>
                            <div class="col-md-3 mb-3">
                                <label class="form-label">{{ ___('frontend.Place_Of_Birth') }}  </label>
                                <input name="place_of_birth" placeholder="{{ ___('frontend.Place_Of_Birth') }}"
                                    class="email form-control ot-input mb_30" type="text"
                                    >
                            </div>
                            {{-- <div class="col-md-3 mb-3">
                                <label class="form-label">{{ ___('frontend.Student_Nationality') }}
                                     </label>
                                <input name="nationality" placeholder="{{ ___('frontend.Student_Nationality') }}"

                                    class="email form-control ot-input mb_30" type="text"
                                    >
                            </div> --}}
                            {{-- <div class="col-md-3 mb-3">
                                <label class="form-label">{{ ___('frontend.CPR_Number') }} </label>
                                <input name="cpr_no" placeholder="{{ ___('frontend.CPR_Number') }}"
                                    class="email form-control ot-input mb_30" type="text"
                                    >
                            </div> --}}
                            {{-- <div class="col-md-3 mb-3">
                                <label
                                    class="form-label">{{ ___('frontend.Student_Sponken_Language_At_Home') }}
                                    </label>
                                <input name="spoken_lang_at_home"
                                    placeholder="{{ ___('frontend.Student_Sponken_Language_At_Home') }}"
                                    class="email form-control ot-input mb_30" type="text"
                                    >
                            </div> --}}
                            <div class="col-md-3 mb-3">
                                <label class="form-label">{{ ___('frontend.Residance_Address') }}  </label>
                                <input name="residance_address"
                                    placeholder="{{ ___('frontend.Residance_Address') }}"
                                    class="email form-control ot-input mb_30" type="text"
                                    >
                            </div>
                            <div class="col-md-3">

                                <label for="validationServer04" class="form-label">{{ ___('common.status') }} <span
                                        class="fillable">*</span></label>
                                <select
                                    class="nice-select niceSelect bordered_style wide @error('status') is-invalid @enderror"
                                    name="status" id="validationServer04"
                                    aria-describedby="validationServer04Feedback">
                                    <option {{ old('status') ? 'selected':'' }} value="{{ App\Enums\Status::ACTIVE }}">{{ ___('common.active') }}
                                    </option>
                                    <option {{ old('status') ? 'selected':'' }} value="{{ App\Enums\Status::INACTIVE }}">{{ ___('common.inactive') }}
                                    </option>
                                </select>

                                @error('status')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror

                            </div>
                        </div>
                        <div class="row mt-24">
                            <div class="col-md-12">
                                <div class="d-flex align-items-center gap-4 flex-wrap">
                                    <h3 class="m-0 flex-fill fs-4">
                                        {{ ___('student_info.upload_documents') }}
                                    </h3>
                                    <button type="button" class="btn btn-lg ot-btn-primary radius_30px small_add_btn addNewDocument"
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
                                    <table class="table school_borderLess_table table_border_hide2" id="student-document">
                                        <thead>
                                            <tr>
                                                <th scope="col">{{ ___('common.name') }} <span
                                                        class="text-danger"></span>
                                                    @if ($errors->any())
                                                        @if ($errors->has('document_names.*'))
                                                            <span class="text-danger">{{ 'the fields are required' }}
                                                        @endif
                                                    @endif
                                                </th>
                                                <th scope="col">
                                                    {{ ___('common.document') }}
                                                    <span class="text-danger"></span>
                                                    @if ($errors->any())
                                                        @if ($errors->has('document_files.*'))
                                                            <span class="text-danger">{{ 'The fields are required' }}
                                                        @endif
                                                    @endif
                                                </th>
                                                <th scope="col">
                                                    {{ ___('common.action') }}
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
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
