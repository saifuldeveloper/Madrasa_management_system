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
                        <li class="breadcrumb-item">{{ $data['title'] }}</li>
                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}


        <div class="col-12">
            <form action="{{ route('graveslist.search') }}" method="post" id="marksheed" enctype="multipart/form-data">
                @csrf
                <div class="card ot-card mb-24 position-relative z_1">
                    <div class="card-header d-flex align-items-center gap-4 flex-wrap">
                        <h3 class="mb-0">{{ ___('common.Filtering') }}</h3>

                        <div
                            class="card_header_right d-flex align-items-center gap-3 flex-fill justify-content-end flex-wrap">
                            <!-- table_searchBox -->
                            {{-- <div class="single_large_selectBox">
                                <select id="getSections" class="class nice-select niceSelect bordered_style wide @error('class') is-invalid @enderror"
                                    name="graves_row">
                                    <option value="">{{ ___('common.graves_row') }}</option>
                                    @foreach ($data['graves_row'] as $item)
                                        <option {{ old( @$data['request']['graves_row']) == $item->id ? 'selected' : '' }}
                                            value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                                @error('class')
                                    <div id="validationServer04Feedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div> --}}
                            <div class="single_large_selectBox">
                                <input class="form-control ot-input"
                                    name="keyword" list="datalistOptions" id="exampleDataList"
                                    placeholder="{{ ___('student_info.enter_keyword') }}"
                                    value="{{ old('keyword', @$data['request']->keyword) }}">
                            </div>
                            {{-- <div class="single_large_selectBox">
                                    <input type="text" class="form-control ot-input"
                                        value="" name="dates">
                                </div> --}}

                            <button class="btn btn-lg ot-btn-primary" type="submit">
                                {{___('common.Search')}}
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>


        <!--  table content start -->
        <div class="table-content table-basic mt-20">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4 class="mb-0">{{ $data['title'] }}</h4>
                    {{-- @if (hasPermission('student_create')) --}}
                        <a href="{{ route('graveslist.create') }}" class="btn btn-lg ot-btn-primary">
                            <span><i class="fa-solid fa-plus"></i> </span>
                            <span class="">{{ ___('common.add') }}</span>
                        </a>
                    {{-- @endif --}}
                </div>
                @if (@$data['graves_list'])
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered role-table">
                            <thead class="thead">
                                <tr>
                                    <th class="serial">{{ ___('common.sr_no') }}</th>
                                    <th class="purchase">{{ ___('common.dead_person_name') }}</th>
                                    <th class="purchase">{{ ___('common.date_of_burial') }}</th>
                                    <th class="purchase">{{ ___('common.relative_name') }}</th>
                                    <th class="purchase">{{ ___('common.name_of_the_relationship') }}</th>
                                    <th class="purchase">{{ ___('common.relative_address') }}</th>
                                    <th class="purchase">{{ ___('common.relative_number') }}</th>
                                    <th class="purchase">{{ ___('common.view') }}</th>
                                    {{-- @if (hasPermission('student_update') || hasPermission('student_delete')) --}}
                                        <th class="action">{{ ___('common.action') }}</th>
                                    {{-- @endif --}}
                                </tr>
                            </thead>
                            <tbody class="tbody">
                                @forelse ($data['graves_list'] as $key => $row)
                                <tr id="row_{{ @$row->id }}">
                                    <td class="serial">{{ ++$key }}</td>
                                    <td class="serial">{{ @$row->frist_name }} {{ @$row->last_name }}</td>
                                    {{-- <td >{{ @$row->genderName->name }}</td> --}}
                                    <td class="serial">{{ @$row->date_of_bural }}</td>
                                    <td class="serial">{{ $row->relative_frist_name }} {{  @$row->relative_second_name }}</td>
                                    <td class="serial">{{ $row->name_of_the_relationship }}</td>
                                    <td class="serial">{{ @$row->relative_present_address }}</td>
                                    <td class="serial">{{ @$row->relative_mobile }}</td>

                                    <td>
                                        <a href="#" class="btn btn-sm ot-btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#viewGraveInfo" onclick="ViewGraveInformation({{ $row->id }})">
                                            <span><i class="fa-solid fa-eye"></i> </span>
                                        </a>
                                    </td>
                                
                                    {{-- @if (hasPermission('student_update') || hasPermission('student_delete')) --}}
                                        <td class="action">
                                            <div class="dropdown dropdown-action">
                                                <button type="button" class="btn-dropdown" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                    <i class="fa-solid fa-ellipsis"></i>
                                                </button>
                                                <ul class="dropdown-menu dropdown-menu-end ">
                                                    @if (hasPermission('student_update'))
                                                        <li>
                                                            <a class="dropdown-item"
                                                                href="{{ route('graveslist.edit', @$row->id) }}"><span
                                                                    class="icon mr-8"><i
                                                                        class="fa-solid fa-pen-to-square"></i></span>
                                                                {{ ___('common.edit') }}</a>
                                                        </li>
                                                    @endif
                                                    {{-- @if (hasPermission('student_delete')) --}}
                                                     

                                                        <li>
                                                            <a class="dropdown-item" href="javascript:void(0);"
                                                                onclick="delete_row('graveslist/delete', {{ $row->id }})">
                                                                <span class="icon mr-8"><i
                                                                        class="fa-solid fa-trash-can"></i></span>
                                                                <span>{{ ___('common.delete') }}</span>
                                                            </a>
                                                        </li>
                                                    {{-- @endif --}}
                                                </ul>
                                            </div>
                                        </td>
                                    {{-- @endif --}}
                                </tr>
                                @empty
                                
                                <tr>
                                    <td colspan="100%" class="text-center gray-color">
                                        <img src="{{ asset('images/no_data.svg') }}" alt="" class="mb-primary" width="100">
                                        <p class="mb-0 text-center">{{ ___('common.no_data_available') }}</p>
                                        <p class="mb-0 text-center text-secondary font-size-90">
                                            {{ ___('common.please_add_new_entity_regarding_this_table') }}</p>
                                    </td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                    <!--  table end -->
                    <!--  pagination start -->

                        <div class="ot-pagination pagination-content d-flex justify-content-end align-content-center py-3">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-between">
                                    {!!$data['graves_list']->appends(\Request::capture()->except('page'))->links() !!}
                                </ul>
                            </nav>
                        </div>

                    <!--  pagination end -->
                </div>
                @else
                <div class="text-center gray-color p-5">
                    <img src="{{ asset('images/no_data.svg') }}" alt="" class="mb-primary" width="100">
                    <p class="mb-0 text-center">{{ ___('common.no_data_available') }}</p>
                    <p class="mb-0 text-center text-secondary font-size-90">
                        {{ ___('common.please_add_new_entity_regarding_this_table') }}</p>
                </div>
                @endif

            </div>
        </div>
        <!--  table content end -->

    </div>

    <div id="view-modal-grave-info">
        <div class="modal " id="viewGraveInfo" tabindex="-1" aria-labelledby="modalWidth" aria-hidden="true">
            <div class="modal-dialog modal-xl">
          
            </div>
        </div>
    </div>
@endsection


<script>
    function ViewGraveInformation(id) {
    var url = $('#url').val();
    var formData = {
        id: id,
    }

    $.ajax({
        type: "GET",
        dataType: 'html',
        data: formData,
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: url + '/graveslist/show',
        success: function (data) {
            // $("#view-modal").append(data);
            $("#viewGraveInfo .modal-dialog").html(data);
        },
        error: function (data) {
            console.log(data);
        }
    });
}
</script>



@push('script')
    @include('backend.partials.delete-ajax')
@endpush
