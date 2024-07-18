<div class="modal-content" id="modalWidth">
    <div class="modal-header modal-header-image">
        <h5 class="modal-title" id="modalLabel2">
            {{ ___('fees.fees_collect') }}
        </h5>
        <button type="button" class="m-0 btn-close d-flex justify-content-center align-items-center"
            data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times text-white" aria-hidden="true"></i></button>
    </div>
    <form action="{{ route('fees-collect.store') }}" enctype="multipart/form-data" method="post" id="visitForm">
        @csrf
        <input type="hidden" name="student_id" value="{{$data['student_id']}}" />
    <div class="modal-body p-5">

        <div class="row mb-3">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="exampleDataList" class="form-label ">{{ ___('fees.due_date') }} <span
                                class="fillable">*</span></label>
                        <input class="form-control ot-input @error('date') is-invalid @enderror" name="date"
                            list="datalistOptions" id="exampleDataList" type="date"
                            placeholder="{{ ___('fees.enter_date') }}" value="{{ old('date') }}" required>
                        @error('date')
                            <div id="validationServer04Feedback" class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">{{ ___('fees.payment_method') }} <span class="fillable">*</span></label>
                        <div class="input-check-radio academic-section @error('payment_method') is-invalid @enderror">
                        @foreach (\Config::get('site.payment_methods') as $key=>$item)

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="payment_method" {{$key == 1 ? 'checked':''}} value="{{$key}}" id="flexCheckDefault{{$key}}" />
                                <label class="form-check-label ps-2 pe-5" for="flexCheckDefault{{$key}}">{{ ___($item) }}</label>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="table-responsive table_height_450 niceScroll">
            <table class="table table-bordered role-table" id="students_table">
                <thead class="thead">
                    <tr>
                        <th class="purchase">{{ ___('fees.group') }}</th>
                        <th class="purchase">{{ ___('fees.type') }}</th>
                        <th class="purchase">{{ ___('fees.due_date') }}</th>
                        <th class="purchase">{{ ___('fees.amount') }} ({{ Setting('currency_symbol') }})</th>
                        <th class="purchase">{{ ___('fees.paid') }} ({{ Setting('currency_symbol') }})</th>
                        <th class="purchase">{{ ___('fees.donation') }} ({{ Setting('currency_symbol') }})</th>
                        <th class="purchase">{{ ___('fees.due') }} ({{ Setting('currency_symbol') }})</th>
                    </tr>
                </thead>
                <tbody class="tbody">
                    @php
                        $total = 0;
                    @endphp
                    @foreach (@$data['fees_assign_children'] as $index => $item)
                    @if($item->fees_collect_count == 0 || @$item->feesCollect->amount !== @$item->feesCollect->paid_amount)

                    <input type="hidden" name="feesCollectId[]"  value="{{ @$item->feesCollect->id }}">

                    @php
                        $total += @$item->feesMaster->amount;

                        if(date('Y-m-d') > $item->feesMaster->date) {
                            $total += @$item->feesMaster->fine_amount;
                        }
                    @endphp
                    <input type="hidden" name="fees_assign_childrens[]" value="{{$item->id}}">
                    <input type="hidden" name="amounts[]" value="{{$item->feesMaster->amount}}">
                    @if(date('Y-m-d') > $item->feesMaster->date)
                        <input type="hidden" name="fine_amounts[]" value="{{$item->feesMaster->fine_amount}}">
                    @else
                        <input type="hidden" name="fine_amounts[]" value="0">
                    @endif
                        <tr>
                            <td>{{ @$item->feesMaster->group->name }}</td>
                            <td>{{ @$item->feesMaster->type->name }}</td>
                            <td>{{ dateFormat(@$item->feesMaster->date) }}</td>
                            <td  class="total_amount" data-index="{{ $index }}" >{{ @$item->feesMaster->amount }}
                                @if(date('Y-m-d') > $item->feesMaster->date)
                                    <span class="text-danger">+ {{ @$item->feesMaster->fine_amount }}</span>
                                @endif
                            </td>
                            <td><input type="number" class="pay_amount form-control" name="pay_amount[]"  data-index="{{ $index }}" value="{{ @$item->feesCollect->paid_amount }}"></td>
                            <td><input type="number" class="donation_amount form-control" name="donation_amount[]"  data-index="{{ $index }}" value="{{ @$item->feesCollect->donation_amount }}"></td>
                            <td  class="payable" data-index="{{ $index }}" data-total=""> {{ $item->feesMaster->amount -  @$item->feesCollect->paid_amount -  @$item->feesCollect->donation_amount }} </td>
                        </tr>
                    @endif
                    @endforeach

                    {{-- <tr>
                        <td colspan="5"></td>
                        <td><strong>{{ ___('common.total') }}</strong></td>
                        <td >{{ @$total }} </td>
                    </tr> --}}
                    {{-- <tr>
                        <td></td>
                        <td></td>
                        <td><strong>{{ ___('common.pay_amount') }}</strong></td>
                        <td><input type="number" id="pay_amouont" name="pay_amount" class="form-control"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><strong>{{ ___('common.pay_donattion') }}</strong></td>
                        <td><input type="number" id="donation_amount" name="donation_amount" class="form-control"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td ><strong >{{ ___('common.due') }}</strong></td>
                        <td id="payble"></td>
                    </tr> --}}
                    
                </tbody>
            </table>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary py-2 px-4"
            data-bs-dismiss="modal">{{ ___('ui_element.cancel') }}</button>
            @if($total != 0)
        <button type="submit" class="btn ot-btn-primary"
            >{{ ___('ui_element.confirm') }}</button>
            @endif
    </div>
    </form>
</div>
