@extends('backend.master')

@section('title')
    {{ ___('common.Online Class Routine 2023') }}
@endsection
<style>
    body {
        font-family: 'Poppins', sans-serif;
        font-size: 14px;
        margin: 0;
        padding: 0;
        -webkit-print-color-adjust: exact !important;
    }

    table {
        border-collapse: collapse;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
        margin: 0;
        color: #000;
    }

    .routine_wrapper {
        max-width: 100%;
        margin: auto;
        background: #fff;
        padding: 20px;
        border-radius: 5px;
    }

    .table {
        width: 100%;
        margin-bottom: 1rem;
        color: #212529;
    }

    .border_none {
        border: 0px solid transparent;
        border-top: 0px solid transparent !important;
    }

    .routine_part_iner {
        background-color: #fff;
    }

    .routine_part_iner h4 {
        font-size: 30px;
        font-weight: 500;
        margin-bottom: 40px;

    }

    .routine_part_iner h3 {
        font-size: 25px;
        font-weight: 500;
        margin-bottom: 5px;

    }

    .table_border thead {
        background-color: #F6F8FA;
    }

    .table td,
    .table th {
        padding: 0px 0;
        vertical-align: top;
        border-top: 0 solid transparent;
        color: #000;
    }

    .table_border tr {
        border-bottom: 1px solid #000 !important;
    }

    th p span,
    td p span {
        color: #212E40;
    }

    .table th {
        color: #000;
        font-weight: 300;
        border-bottom: 1px solid #000 !important;
        background-color: #fff;
    }

    p {
        font-size: 14px;
        color: #000;
        font-weight: 400;
    }

    h5 {
        font-size: 12px;
        font-weight: 500;
    }

    h6 {
        font-size: 10px;
        font-weight: 300;
    }

    .mt_40 {
        margin-top: 40px;
    }

    .table_style th,
    .table_style td {
        padding: 20px;
    }

    .routine_info_table td {
        font-size: 10px;
        padding: 0px;
    }

    .routine_info_table td h6 {
        color: #6D6D6D;
        font-weight: 400;
    }

    .text_right {
        text-align: right;
    }

    .virtical_middle {
        vertical-align: middle !important;
    }

    .border_bottom {
        border-bottom: 1px solid #000;
    }

    .line_grid {
        display: grid;
        grid-template-columns: 100px auto;
        grid-gap: 10px;
    }

    .line_grid span {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    p {
        margin: 0;
        color: #000;
    }

    .font_18 {
        font-size: 18px;
    }

    .mb-0 {
        margin-bottom: 0;
    }

    .mb_30 {
        margin-bottom: 30px !important;
    }

    .mb_40 {
        margin-bottom: 40px !important;
    }

    .mb_10 {
        margin-bottom: 10px !important;
    }

    .mb_20 {
        margin-bottom: 20px !important;
    }

    .bold_text {
        font-weight: 600;
    }

    .border_table {
        /* border: 1px solid #000; */
    }

    .title_header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin: 40px 0 15px 0;
    }

    .border_table tr:nth-of-type(n) {
        border: 1px solid #000;
    }

    .border_table tfoot tr:first-of-type {
        border: 0;
    }

    .border_table tfoot tr:first-of-type td {
        border: 0;
    }

    .border_table tbody tr:nth-of-type(odd) {
        background: #F0F3F5;
    }

    .routine_header {}

    .routine_header h3 {
        font-size: 24px;
        font-weight: 500;
    }

    .routine_header p {
        font-size: 14px;
        font-weight: 400;
        margin-bottom: 15px !important;
    }

    /* border_table  */
    .border_table {}

    .border_table thead {}

    .border_table thead tr th {
        padding: 5px;
        border-right: 1px solid #EAEAEA;
        border-color: #EAEAEA !important;
        font-weight: 700;
        font-size: 16px;
        color: #1A1A21;
        padding: 19.75px 16px;
        text-align: left;
        white-space: nowrap;
        vertical-align: middle;
        border-top: 1px solid;
    }

    .border_table tbody tr td,
    .border_table tfoot tr td {
        border-bottom: 1px solid #EAEAEA;
        text-align: left;
        padding: 30.5px 16px;
        border-right: 1px solid #EAEAEA;
        font-weight: 500;
        font-size: 18px;
        line-height: 22px;
        color: #424242;
        white-space: nowrap;
    }

    .border_table tr:nth-of-type(n) {
        border: 1px solid #EAEAEA;
        border-top: 0;
    }

    .border_table tbody tr th {
        background: #EAEAEA;
        border: 1px solid #FFFFFF;
        font-weight: 700;
        font-size: 18px;
        line-height: 30px;
        border-color: #fff !important;
        color: #424242;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 140px;
    }

    .classBox_wiz {
        min-height: 129px;
        vertical-align: middle;
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding: 15px;
    }

    .classBox_wiz h5 {
        font-weight: 600;
        font-size: 18px;
        line-height: 22px;
        color: #424242;
        margin: 0 0 5px 0;
        white-space: nowrap
    }

    .classBox_wiz p {
        font-weight: 500;
        font-size: 14px;
        line-height: 18px;
        color: #6B6B6B;
        margin: 0 0 5px 0;
    }

    .marked_bg {
        background: #6B6B6B !important;
        color: #FFFFFF !important;
    }

    .break_text {
        min-height: 129px;
        vertical-align: middle;
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding: 15px;
    }

    .break_text h5 {
        font-weight: 600;
        font-size: 18px;
        line-height: 22px;
        color: #424242;
        transform: rotate(-30deg);
    }

    .download_print_btns {
        display: flex;
        align-items: center;
        justify-content: center;
        grid-gap: 12px;
    }

    .student_info {
        display: flex;
        align-items: center;
        grid-gap: 16px;
    }

    .student_info img {
        border-radius: 4px;
        width: 24px;
        height: 24px;
    }

    .student_info h5 {
        font-weight: 500;
        font-size: 18px;
        line-height: 22px;
        color: #424242;
        margin: 0;
    }

    /* routine_wrapper_header  */
    .routine_wrapper_header {
        background: #392C7D;
        padding: 32px 36px;
        border-radius: 16px 16px 0 0;
        margin-bottom: 0;
        flex-wrap: wrap;
        grid-gap: 20px;
        margin-bottom: 20px;
        justify-content: center;
    }

    .routine_wrapper_header h3 {
        font-weight: 500;
        font-size: 36px;
        line-height: 40px;
        color: #FFFFFF;
        margin: 0;
    }

    .routine_wrapper_header h4 {
        font-size: 24px;
        color: #FF5170;
        font-weight: 500;
        margin: 7px 0 7px 0;
    }

    .routine_wrapper_header p {
        font-weight: 500;
        font-size: 18px;
        line-height: 30px;
        color: #FFFFFF;
        margin: 0;
    }

    .routine_wrapper_header_logo .header_logo {
        max-width: 193px;
    }

    .routine_wrapper_header {
        display: flex;
        align-items: center;
    }

    .routine_wrapper_header {
        padding: 30px 20px;
    }

    .routine_wrapper_header h3 {
        font-size: 24px;
    }

    .print_copyright_text {
        flex-direction: column;
        align-items: center;
        justify-content: center;
        grid-gap: 10px;
        margin: 20px 0;
        display: flex;
        align-items: center;
        padding-bottom: 10px;

    }

    .download_print_btns {
        display: flex;
        align-items: center;
        justify-content: start;
        grid-gap: 12px;
        background: #F3F3F3;
        padding: 20px;
        flex-wrap: wrap;
    }

    .vertical_seperator {
        border-right: 1px solid #FFFFFF;
        height: 93px;
        margin: 0 30px 0 40px;
    }

    @media (max-width: 768px) {
        .student_info_single {
            width: 100%;
        }

        .vertical_seperator {
            display: none !important;
        }

        .routine_wrapper {
            width: 100%;
        }

        .routine_wrapper_body {
            padding: 0;
        }

        .student_info_single {
            flex-wrap: wrap;
        }

        .download_print_btns {
            margin-top: 30px;
        }

        .routine_wrapper_header {
            padding: 20px 20px;
        }

        .routine_wrapper_header h3 {
            font-size: 24px;
        }
    }
</style>

@section('content')
    <div class="page-content">
        {{-- bradecrumb Area S t a r t --}}
        <div class="page-header">
            <div class="row">
                <div class="col-sm-6">
                    <h4 class="bradecrumb-title mb-1">{{ ___('settings.Accounts') }}</h1>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">{{ ___('common.home') }}</a></li>
                            <li class="breadcrumb-item">{{ ___('settings.Accounts') }}</li>
                        </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}

        <div class="row">
            <div class="col-12">
                <form action="{{ route('account.search') }}" method="post" id="account" enctype="multipart/form-data">
                    @csrf
                    <div class="card ot-card mb-24 position-relative z_1">
                        <div class="card-header d-flex align-items-center gap-4 flex-wrap">
                            <h3 class="mb-0">{{ ___('common.Filtering') }}</h3>

                            <div
                                class="card_header_right d-flex align-items-center gap-3 flex-fill justify-content-end flex-wrap">
                                <!-- table_searchBox -->


                                <div class="single_large_selectBox">
                                    <select
                                        class="nice-select niceSelect bordered_style wide account_head_type @error('type') is-invalid @enderror"
                                        name="type">
                                        <option value="{{ App\Enums\AccountHeadType::INCOME }}"
                                            {{ @$data['request']->type == App\Enums\AccountHeadType::INCOME ? 'selected' : '' }}>
                                            {{ ___('account.income') }}</option>
                                        <option value="{{ App\Enums\AccountHeadType::EXPENSE }}"
                                            {{ @$data['request']->type == App\Enums\AccountHeadType::EXPENSE ? 'selected' : '' }}>
                                            {{ ___('account.expense') }}</option>
                                    </select>
                                    @error('type')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <div class="single_large_selectBox">
                                    <select
                                        class="nice-select niceSelect bordered_style wide account_types @error('head') is-invalid @enderror"
                                        name="head">
                                        <option value="">{{ ___('student_info.select_head') }}</option>
                                        @foreach ($data['account_head'] as $item)
                                            <option
                                                {{ old('head', @$data['request']->head) == $item->id ? 'selected' : '' }}
                                                value="{{ $item->id }}">{{ $item->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('head')
                                        <div id="validationServer04Feedback" class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="single_large_selectBox">
                                    <div class="input-group table_searchBox">
                                        <input name="name" value="{{ @$data['request']->name }}" type="text" class="form-control" placeholder="{{___('common.name')}} " aria-label="Search " aria-describedby="searchIcon">
                                        <span class="input-group-text" id="searchIcon">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="single_large_selectBox">
                                    <input type="text" class="form-control ot-input"
                                        value="{{ @$data['request']->dates }}" name="dates">
                                </div>

                                <button class="btn btn-lg ot-btn-primary" type="submit">
                                    {{ ___('common.Search') }}
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            @if (@$data['result'])
                <div class="col-lg-12">
                    @if (count($data['result']) > 0)
                        <div class="download_print_btns">
                            <button class="btn btn-lg ot-btn-primary" onclick="printDiv('printableArea')">
                                {{ ___('common.print_now') }}
                                <span><i class="fa-solid fa-print"></i></span>
                            </button>
                            <form action="{{ route('report-account.pdf-generate') }}" method="post">
                                @csrf
                                <input type="hidden" name="type" value="{{ $data['request']->type }}">
                                <input type="hidden" name="head" value="{{ $data['request']->head }}">
                                <input type="hidden" name="dates" value="{{ $data['request']->dates }}">
                                <button class="btn btn-lg ot-btn-primary mt-3"
                                    type="submit">{{ ___('common.pdf_download') }} <span><i
                                            class="fa-brands fa-dochub"></i></span></button>
                            </form>
                        </div>
                    @endif
                    <div class="routine_wrapper" id="printableArea">
                        <!-- routine_wrapper_header part here -->
                        <div class="routine_wrapper_header">
                            <div class="routine_wrapper_header_logo">
                                <img class="header_logo" src="{{ @globalAsset(setting('light_logo'), '154X38.webp') }}"
                                    alt="{{ __('light logo') }}">
                            </div>
                            <div class="vertical_seperator"></div>
                            <div class="routine_wrapper_header_content">
                                <h3>{{ setting('application_name') }}</h4>
                                    <p>{{ setting('address') }}</p>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table border_table mb_30">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>{{ ___('common.date') }}</th>
                                        <th>{{ ___('common.name') }}</th>
                                        <th>{{ ___('account.Head') }}</th>
                                        <th>{{ ___('report.Amount') }} ({{ Setting('currency_symbol') }})</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($data['result'] as $key=>$item)
                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ dateFormat($item->date) }}</td>
                                            <td>
                                                @if (@$item->fees_collect_id != null)
                                                    {{ @$item->feesType->name }}
                                                @else
                                                    {{ @$item->name }}
                                                @endif
                                            </td>
                                            <td>{{ $item->head->name }}</td>
                                            <td>{{ $item->amount }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="5" class="td-text-center">
                                                @include('backend.includes.no-data')
                                            </td>
                                        </tr>
                                    @endforelse

                             
                                    @if( $data['request']->type == 2)

                                    <tr>
                                        <td colspan="2"></td>
                                        <td colspan="2">{{ ___('account.quantity') }}:</td>
                                        <td>{{ $data['quantity'] }}</td>
                                    </tr>
                                    @endif
                                    <tr>
                                        <td colspan="2"></td>
                                        <td colspan="2">{{ ___('common.total') }}:</td>
                                        <td>{{ $data['sum'] }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>

                    <div class="ot-pagination pagination-content d-flex justify-content-end align-content-center py-3">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-between">
                                {!! $data['result']->appends(\Request::capture()->except('page'))->links() !!}
                            </ul>
                        </nav>
                    </div>

                    <!--  pagination end -->

                </div>
            @endif
        </div>
    </div>
@endsection
