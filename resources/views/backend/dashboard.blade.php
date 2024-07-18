@extends('backend.master')

@section('title')
{{ ___('dashboard.Dashboard') }}
@endsection

@section('content')
<div class="page-content">
    <div class="row ">
        
        {{-- Counter --}}
        @if (hasPermission('counter_read'))
            <div class="col-xl-3 col-lg-3 col-md-6">
                <div class="ot_crm_summeryBox2 d-flex align-items-center mb-24">
                    <div class="icon style2">
                        <img class="img-fluid" src="{{ global_asset('backend/assets/images/crm/4.svg') }}" alt="crm_summery1">
                    </div>
                    <div class="summeryContent">
                        <h4>{{ $data['student'] }}</h4>
                        <h1>{{ ___('dashboard.Student') }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6">
                <div class="ot_crm_summeryBox2 d-flex align-items-center mb-24">
                    <div class="icon style3">
                        <img class="img-fluid" src="{{ global_asset('backend/assets/images/crm/2.svg') }}" alt="crm_summery1">
                    </div>
                    <div class="summeryContent">
                        <h4>{{ $data['parent'] }}</h4>
                        <h1>{{ ___('dashboard.Parent') }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6">
                <div class="ot_crm_summeryBox2 d-flex align-items-center mb-24">
                    <div class="icon">
                        <img class="img-fluid" src="{{ global_asset('backend/assets/images/crm/3.svg') }}" alt="crm_summery1">
                    </div>
                    <div class="summeryContent">
                        <h4>{{ $data['teacher'] }}</h4>
                        <h1>{{ ___('common.teacher') }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6">
                <div class="ot_crm_summeryBox2 d-flex align-items-center mb-24">
                    <div class="icon style4">
                        <img class="img-fluid" src="{{ global_asset('backend/assets/images/crm/1.svg') }}" alt="crm_summery1">
                    </div>
                    <div class="summeryContent">
                        <h4>{{ $data['grave'] }}</h4>
                        <h1>{{ ___('common.grave') }}</h1>
                    </div>
                </div>
            </div>
        @endif

        {{-- Fees collesction --}}
        @if (hasPermission('fees_collesction_read'))
            <div class="col-xxl-8 col-xl-12 ">
                <div class="ot-card chart-card2 ot_heightFull mb-24">

                    {{-- Tittle --}}
                    <div class="card-header d-flex justify-content-between align-items-center flex-wrap gap_20">
                        <div class="card-title ">
                            <h4 class="mb-0">{{___('dashboard.fees_collection')}} ({{ date('Y') }})</h4>
                        </div>
                    </div>

                    {{-- Chart --}}
                    <div id="academic_chart"></div>

                </div>
            </div>
        @endif
        
        {{-- Revenue --}}
        @if (hasPermission('revenue_read'))
            <div class="col-12 col-lg-12 col-xl-6 col-xxl-4">
                <div class="ot-card ot_heightFull mb-24">
                    <div class="card-header d-flex justify-content-between">
                        <div class="card-title">
                            <h4>{{ ___('dashboard.Revenue') }} ({{ date('Y') }})</h4>
                        </div>
                    </div>
                    <div class="d-flex flex-column align-items-center w-100">
                        <div class="d-flex justify-content-between align-items-center w-100">
                            <div id="ot-line-chart-income"></div>
                            <div class="chart-custom-content gap-0 flex-column align-items-start">
                                <h3>{{ ___('dashboard.total_income') }}</h3>
                                <div class="d-flex align-items-baseline gap-2">
                                    <h2 class="counter">{{ $data['income'] }}</h2>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between align-items-center w-100">
                            <div id="ot-line-chart-expense"></div>
                            <div class="chart-custom-content gap-0 flex-column align-items-start">
                                <h3>{{ ___('dashboard.total_expense') }}</h3>
                                <div class="d-flex align-items-baseline gap-2">
                                    <h2 class="counter">{{ $data['expense'] }}</h2>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between align-items-center w-100">
                            <div id="ot-line-chart-revenue"></div>
                            <div class="chart-custom-content gap-0 flex-column align-items-start">
                                <h3>{{ ___('dashboard.total_balance') }}</h3>
                                <div class="d-flex align-items-baseline gap-2">
                                    <h2 class="counter">{{ $data['balance'] }}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        {{-- Fees collection this month --}}
        @if (hasPermission('fees_collection_this_month_read'))
            <div class="col-12 col-lg-12 col-xl-6 col-xxl-6">
                <div class="ot-card mb-24 ot_heightFull">
                    <div class="card-header d-flex justify-content-between">
                        <div class="card-title">
                            <h4>{{ ___("dashboard.fees_collection") }} ({{ date('M Y') }})</h4>
                        </div>
                    </div>
                    <div id="fees_collection_this_month"></div>
                </div>
            </div>
        @endif
        
        {{-- Income & Expense This Month --}}
        @if (hasPermission('income_expense_read'))
            <div class="col-12 col-lg-12 col-xl-6 col-xxl-6">
                <div class="ot-card mb-24 ot_heightFull">
                    <div class="card-header d-flex justify-content-between">
                        <div class="card-title">
                            <h4>{{ ___("dashboard.income_and_expense") }} ({{ date('M Y') }})</h4>
                        </div>
                    </div>
                    <div id="income_expense_chart_this_month"></div>
                </div>
            </div>
        @endif

        <!-- Upcoming Events -->
        @if (hasPermission('upcoming_events_read'))
            <div class="col-xxl-4 col-xl-6">
                <div class="ot-card chart-card2 ot_heightFull mb-24">
                    <div class="card-header d-flex justify-content-between align-items-center flex-wrap gap_10 card_header_border">
                        <div class="card-title">
                            <h4>{{___('dashboard.upcoming_events')}}</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="event_upcoming_list">
                            
                            
                            @foreach ($data['events'] as $item)
                                <!-- event_upcoming_single  -->
                                <div class="event_upcoming_single d-flex align-items-center gap_20 flex-wrap">
                                    <div class="icon d-flex align-items-center flex-column justify-content-center">
                                        <h4>{{ date('d', strtotime($item->date)) }}</h4>
                                        <h5>{{ date('D', strtotime($item->date)) }}</h5>
                                    </div>
                                    <div class="event_content_info">
                                        <h4><a href="{{ route('event.edit', $item->id) }}">{!! Str::limit($item->title,40) !!}</a></h4>
                                        <p class="d-flex align-items-center gap-2 "> <svg width="11" height="11" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M8.42676 1.50024H10.4268C10.5594 1.50024 10.6865 1.55292 10.7803 1.64669C10.8741 1.74046 10.9268 1.86764 10.9268 2.00024V10.0002C10.9268 10.1329 10.8741 10.26 10.7803 10.3538C10.6865 10.4476 10.5594 10.5002 10.4268 10.5002H1.42676C1.29415 10.5002 1.16697 10.4476 1.0732 10.3538C0.979436 10.26 0.926758 10.1329 0.926758 10.0002V2.00024C0.926758 1.86764 0.979436 1.74046 1.0732 1.64669C1.16697 1.55292 1.29415 1.50024 1.42676 1.50024H3.42676V0.500244H4.42676V1.50024H7.42676V0.500244H8.42676V1.50024ZM9.92676 5.50024H1.92676V9.50024H9.92676V5.50024ZM7.42676 2.50024H4.42676V3.50024H3.42676V2.50024H1.92676V4.50024H9.92676V2.50024H8.42676V3.50024H7.42676V2.50024ZM2.92676 6.50024H3.92676V7.50024H2.92676V6.50024ZM5.42676 6.50024H6.42676V7.50024H5.42676V6.50024ZM7.92676 6.50024H8.92676V7.50024H7.92676V6.50024Z" fill="#6B6B6B" />
                                            </svg>
                                            <span>{{ $item->date == date('Y-m-d') ? 'Today' : dateFormat($item->date) }} | {{ timeFormat($item->start_time) }} - {{ timeFormat($item->end_time) }}</span>
                                        </p>
                                    </div>
                                </div>
                            @endforeach
                            


                        </div>
                    </div>
                </div>
            </div>
        @endif
        
        {{-- Attendance --}}
        @if (hasPermission('attendance_chart_read'))
            <div class="col-12 col-lg-12 col-xl-12 col-xxl-8">
                <div class="ot-card mb-24 ot_heightFull">
                    <div class="card-header d-flex justify-content-between">
                        <div class="card-title">
                            <h4>{{ ___("dashboard.todays_attendance") }} ({{ date('d M Y') }})</h4>
                        </div>
                    </div>
                    <div id="today_attendance_chart"></div>
                </div>
            </div>
        @endif
        
        {{-- Calendar --}}
        @if (hasPermission('calendar_read'))
            <div class="col-12">
                <div class="ot-card mb-24">
                    <div id='calendar'></div>
                </div>
            </div>
        @endif

        
    </div>
</div>
@endsection

@push('script')
<script src="{{ global_asset('backend') }}/assets/js/apex-chart.js"></script>
@endpush