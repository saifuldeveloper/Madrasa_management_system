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

    <!--  table content start -->
    <div class="table-content table-basic mt-20">
        <div class="card">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h4 class="mb-0">{{ $data['title'] }}</h4>
                @if (hasPermission('user_create'))
                <a href="{{ route('users.create') }}" class="btn btn-lg ot-btn-primary">
                    <span><i class="fa-solid fa-plus"></i> </span>
                    <span class="">{{ ___('common.add') }}</span>
                </a>
                @endif
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered user-table">
                        <thead class="thead">
                            <tr>
                                <th class="serial">{{ ___('common.sr_no.') }}</th>
                                <th class="purchase">{{ ___('staff.staff_id') }}</th>
                                <th class="purchase">{{ ___('common.name') }}</th>
                                <th class="purchase">{{ ___('common.roles') }}</th>
                                <th class="purchase">{{ ___('staff.departments') }}</th>
                                <th class="purchase">{{ ___('common.designation') }}</th>
                                <th class="purchase">{{ ___('common.email') }}</th>
                                <th class="purchase">{{ ___('common.phone') }}</th>
                                <th class="purchase">{{ ___('common.status') }}</th>
                                @if (hasPermission('user_update') || hasPermission('user_delete'))
                                <th class="action">{{ ___('common.action') }}</th>
                                @endif
                            </tr>
                        </thead>
                        <tbody class="tbody">
                            @forelse ($data['users'] as $key => $row)
                            <tr id="row_{{ $row->id }}">
                                <td class="serial">{{ ++$key }}</td>
                                <td class="serial">{{ $row->staff_id }}</td>
                                <td>
                                    <div class="">
                                        <a href="{{ route('users.show',$row->id) }}">
                                            <div class="user-card">
                                                <div class="user-avatar">
                                                    <img src="{{ @globalAsset($row->upload['path'], '40X40.webp') }}"
                                                        alt="{{ $row->name }}">
                                                </div>
                                                <div class="user-info">
                                                    {{ $row->first_name }} {{ $row->last_name }}
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </td>
                                <td>{{ $row->role->name }}</td>
                                <td>{{ $row->department->name }}</td>
                                <td>{{ $row->designation->name }}</td>
                                <td>{{ $row->email }}</td>
                                <td>{{ $row->phone }}</td>
                                <td>
                                    @if ($row->status == App\Enums\Status::ACTIVE)
                                    <span class="badge-basic-success-text">{{ ___('common.active') }}</span>
                                    @else
                                    <span class="badge-basic-danger-text">{{ ___('common.inactive') }}</span>
                                    @endif
                                </td>
                                @if (hasPermission('user_update') || hasPermission('user_delete'))
                                <td class="action">
                                    <div class="dropdown dropdown-action">
                                        <button type="button" class="btn-dropdown" data-bs-toggle="dropdown"
                                            aria-expanded="false">
                                            <i class="fa-solid fa-ellipsis"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                            @if (hasPermission('user_update'))
                                            <li>
                                                <a class="dropdown-item" href="{{ route('users.edit', $row->id) }}">
                                                    <span class="icon mr-8"><i
                                                            class="fa-solid fa-pen-to-square"></i></span>
                                                    <span>{{ ___('common.edit') }}</span>
                                                </a>
                                            </li>
                                            @endif
                                            @if (hasPermission('user_delete'))
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                    onclick="delete_row('users/delete', {{ $row->id }})">
                                                    <span class="icon mr-12"><i
                                                            class="fa-solid fa-trash-can"></i></span>
                                                    <span>{{ ___('common.delete') }}</span>
                                                </a>
                                            </li>
                                            @endif
                                        </ul>
                                    </div>

                                </td>
                                @endif
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
                                {!! $data['users']->links() !!}
                            </ul>
                        </nav>
                    </div>
                <!--  pagination end -->
            </div>
        </div>
    </div>
    <!--  table content end -->
</div>
@endsection

@push('script')
@include('backend.partials.delete-ajax')
@endpush
