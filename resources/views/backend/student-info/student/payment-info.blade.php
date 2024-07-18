<div class="modal-content" id="modalWidth">
    <div class="modal-header modal-header-image">
        <h5 class="modal-title" id="modalLabel2">
            {{ ___('common.payment_information') }}
        </h5>
        <button type="button" class="m-0 btn-close d-flex justify-content-center align-items-center"
            data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times text-white" aria-hidden="true"></i></button>
    </div>
    <div class="modal-body p-5">
        <div class="table-responsive table_height_450 niceScroll">
            <div class="col-lg-12">
                <div class="row">
                    <h5 style="background: #3249A9;color: white;padding: 10px;padding-left:30px;">
                        {{ ___('common.payment_information') }}</h5>

                    <div class="table-responsive table_height_450 niceScroll">
                        <table class="table table-bordered role-table" id="students_table">
                            <thead class="thead">
                                <tr>
                                    <th class="purchase">{{ ___('fees.group') }}</th>
                                    <th class="purchase">{{ ___('fees.type') }}</th>
                                    <th class="purchase">{{ ___('fees.due_date') }}</th>
                                    <th class="purchase">{{ ___('fees.amount') }} ({{ Setting('currency_symbol') }})
                                    </th>
                                    <th class="purchase">{{ ___('fees.paid') }} ({{ Setting('currency_symbol') }})</th>
                                    <th class="purchase">{{ ___('fees.donation') }} ({{ Setting('currency_symbol') }})
                                    </th>
                                    <th class="purchase">{{ ___('fees.due') }} ({{ Setting('currency_symbol') }})</th>
                                </tr>
                            </thead>
                            <tbody class="tbody">
                                @php
                                    $total = 0;
                                @endphp
                                @foreach (@$data['fees_assign_children'] as $index => $item)
                                    <input type="hidden" name="feesCollectId[]" value="{{ @$item->feesCollect->id }}">

                                    @php
                                        $total += @$item->feesMaster->amount;

                                        if (date('Y-m-d') > $item->feesMaster->date) {
                                            $total += @$item->feesMaster->fine_amount;
                                        }
                                    @endphp
                                    <input type="hidden" name="fees_assign_childrens[]" value="{{ $item->id }}"
                                        readonly>
                                    <input type="hidden" name="amounts[]" value="{{ $item->feesMaster->amount }}"
                                        readonly>
                                    @if (date('Y-m-d') > $item->feesMaster->date)
                                        <input type="hidden" name="fine_amounts[]"
                                            value="{{ $item->feesMaster->fine_amount }}">
                                    @else
                                        <input type="hidden" name="fine_amounts[]" value="0">
                                    @endif
                                    <tr>
                                        <td>{{ @$item->feesMaster->group->name }}</td>
                                        <td>{{ @$item->feesMaster->type->name }}</td>
                                        <td>{{ dateFormat(@$item->feesMaster->date) }}</td>
                                        <td class="total_amount" data-index="{{ $index }}">
                                            {{ @$item->feesMaster->amount }}
                                            @if (date('Y-m-d') > $item->feesMaster->date)
                                                <span class="text-danger">+
                                                    {{ @$item->feesMaster->fine_amount }}</span>
                                            @endif
                                        </td>
                                           <td>

                                            {{ @$item->feesCollect->paid_amount }}

                                        
                                            </td>
                                        <td>

                                            {{ @$item->feesCollect->donation_amount }}


                                        </td>
                                        <td class="payable" data-index="{{ $index }}" data-total="">
                                            {{ $item->feesMaster->amount - @$item->feesCollect->paid_amount - @$item->feesCollect->donation_amount }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary py-2 px-4"
            data-bs-dismiss="modal">{{ ___('ui_element.cancel') }}</button>

    </div>
