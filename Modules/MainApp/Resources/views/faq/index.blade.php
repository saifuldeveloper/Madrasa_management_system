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
                        <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ ___('common.home') }}</a></li>
                        <li class="breadcrumb-item">{{ ___('common.FAQ List') }}</li>
                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}

        <!--  table content start -->
        <div class="table-content table-basic mt-20">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4 class="mb-0">{{ ___('common.FAQ List') }}</h4>
                    <a href="{{ route('faq.create') }}" class="btn btn-lg ot-btn-primary">
                        <span><i class="fa-solid fa-plus"></i> </span>
                        <span class="">{{ ___('common.add') }}</span>
                    </a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered faq-table">
                            <thead class="thead">
                                <tr>
                                    <th class="serial">{{ ___('common.sr_no') }}</th>
                                    <th class="purchase">{{ ___('common.Question') }}</th>
                                    <th class="purchase">{{ ___('common.Position') }}</th>
                                    <th class="purchase">{{ ___('common.status') }}</th>
                                    <th class="action">{{ ___('common.action') }}</th>
                                </tr>
                            </thead>
                            <tbody class="tbody">
                                @forelse ($data['faqs'] as $key => $row)
                                <tr id="row_{{ $row->id }}">
                                    <td class="serial">{{ ++$key }}</td>
                                    <td>{{ $row->question }}</td>
                                    <td>{{ $row->position }}</td>
                                    <td>
                                        @if ($row->status == App\Enums\Status::ACTIVE)
                                            <span class="badge-basic-success-text">{{ ___('common.active') }}</span>
                                        @else
                                            <span class="badge-basic-danger-text">{{ ___('common.inactive') }}</span>
                                        @endif
                                    </td>
                                    <td class="action">
                                        <div class="dropdown dropdown-action">
                                            <button type="button" class="btn-dropdown" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                                <i class="fa-solid fa-ellipsis"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end ">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('faq.edit', $row->id) }}"><span
                                                            class="icon mr-8"><i
                                                                class="fa-solid fa-pen-to-square"></i></span>
                                                        {{ ___('common.edit') }}</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="javascript:void(0);"
                                                        onclick="delete_row('faq/delete', {{ $row->id }})">
                                                        <span class="icon mr-8"><i
                                                                class="fa-solid fa-trash-can"></i></span>
                                                        <span>{{ ___('common.delete') }}</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
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
                                    {!!$data['faqs']->links() !!}
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
