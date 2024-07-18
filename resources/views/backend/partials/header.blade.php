<style>
    .notification_wrapper .notification_items {
        -webkit-transition: 0.3s;
        transition: 0.3s;
        top: 53px;
        position: absolute;
        z-index: 11;
        -webkit-box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.05);
        box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.05);
        width: 300px;
        top: 50px;
        right: 0;
        border-radius: 10px;
        z-index: 121;
        background: #f6f8ff;
        -webkit-transform: translateY(10px) translateX(50%);
        transform: translateY(10px) translateX(50%);
        opacity: 0;
        visibility: hidden;
        transition: 0.3s;
    }

    .notification_wrapper .notification_items .notification_header {
        padding: 20px;
        background-color: #2B2D35;
        border-radius: 10px 10px 0 0;
    }

    .notification_wrapper .notification_items .notification_header h3 {
        font-size: 18px;
        font-weight: 700;
        color: #fff;
    }

    .notification_wrapper .notification_items .notification_body {
        padding: 20px 20px 20px 20px;
        overflow: auto;
        max-height: 350px;
        border-radius: 0 0 10px 10px;
    }

    .notification_wrapper .notification_items .notification_body .notification_item {
        grid-gap: 10px;
    }

    .notification_wrapper .notification_items .notification_body .notification_item .icon {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        font-weight: 500;
        color: #fff;
        background-color: #7367f0;
        background-repeat: no-repeat;
        background-position: center center;
        background-size: cover;
        border-radius: 0.475rem;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        width: 35px;
        height: 35px;
        color: #fff;
    }

    .notification_wrapper .notification_items .notification_body .notification_item .notification_item_content h5 {
        font-size: 16px;
        color: #000;
    }

    .notification_wrapper .notification_items .notification_body .notification_item .notification_item_content p {
        font-size: 12px;
        color: #000
    }

    .notification_wrapper .notification_items .notification_body .notification_item .notification_item_content .notification_time {
        background-color: #f9f9f9;
        font-size: 12px;
        padding: 2px 10px;
        border-radius: 4px;
    }

    .notification_wrapper:hover .notification_items {
        opacity: 1;
        visibility: visible;
        -webkit-transform: translateY(0px) translateX(50%);
        transform: translateY(0px) translateX(50%);
    }

    .notification_counter {
        top: -8px;
        right: -4px;
        color: #fff;
        background: red;
        border-radius: 50%;
        width: 16px;
        height: 16px;
        font-size: 12px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
    }
</style>
<header class="header">
    <button class="close-toggle sidebar-toggle p-0">
        <img src="{{ global_asset('backend') }}/assets/images/icons/hammenu-2.svg" alt="" />
    </button>
    <div class="spacing-icon">
        <div class="header-search tab-none">
            <div class="search-icon">
                <i class="las la-search"></i>
            </div>
            <input class="search-field ot_input" id="search_field" type="text"
                placeholder="{{ ___('common.search_page') }}" onkeyup="searchMenu()">
            <div id="autoCompleteData" class="d-none">
                <ul class="search_suggestion">

                </ul>
            </div>
        </div>

        {{-- @if (hasPermission('report_attendance_read'))
        <div class="teacher_student_count d-flex align-items-center gap-3">
            <div class="teacher_student_count_item d-flex align-items-center">
                <i class="las la-user-tie" ></i>
                <p class="m-0">{{ ___('common.Student present')}}: <span>{{ @$attendance['present_student'] }}</span> {{ ___('common.& Absent')}}: <span class="absent_text">{{ @$attendance['absent_student'] }}</span></p>
            </div>
        </div>
        @endif --}}

        <div class="header-controls">
            <div class="header-control-item md-none">
                <div class="item-content language-currceny-container">
                    <button class="language-currency-btn d-flex align-items-center mt-0" type="button"
                        id="language_change" data-bs-toggle="dropdown" aria-expanded="false">
                        <div class="icon-flag">
                            <i class="{{ @$language['language']->icon_class }} rounded-circle icon"></i>
                        </div>
                        <h6>{{ @$language['language']->name }}</h6>
                    </button>

                    <div class="language-currency-dropdown dropdown-menu dropdown-menu-end top-navbar-dropdown-menu ot-card"
                        aria-labelledby="language_change">

                        <div class="lanuage-currency-">
                            <div class="dropdown-item-list language-list mb-20">
                                <h5>{{ ___('common.language') }}</h5>
                                <select name="language" id="language_with_flag"
                                    class="form-select ot-input mb-3 language-change"
                                    aria-label="Default select example">
                                    @foreach ($language['languages'] as $row)
                                        <option data-icon="{{ $row->icon_class }}" value="{{ $row->code }}"
                                            {{ $row->code == \Session::get('locale') ? 'selected' : '' }}>
                                            {{ $row->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="header-control-item md-none">
                <div class="item-content language-currceny-container">
                    <button class="language-currency-btn d-flex align-items-center mt-0" type="button"
                        id="language_change" data-bs-toggle="dropdown" aria-expanded="false">

                        <h6>{{ ___('settings.Sessions') }}: {{ @$session['session']->name }}</h6>
                    </button>

                    <div class="language-currency-dropdown dropdown-menu dropdown-menu-end top-navbar-dropdown-menu ot-card"
                        aria-labelledby="language_change">

                        <div class="lanuage-currency-">
                            <div class="dropdown-item-list language-list mb-20">
                                <h5>{{ ___('settings.sessions') }}</h5>
                                <select name="language" id="language_with_flag"
                                    class="form-select ot-input mb-3 session-change"
                                    aria-label="Default select example">
                                    @foreach ($session['sessions'] as $row)
                                        <option value="{{ $row->id }}"
                                            {{ $row->id == setting('session') ? 'selected' : '' }}>
                                            {{ $row->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="header-control-item">
                <div class="dropdown theme_dropdown ">
                    <button id="button" class="btn "><i class="lar la-sun"></i></button>
                </div>
            </div>
            <div class="header-control-item">
                <div class="item-content dropdown md-none">
                    <button class="mt-0 p-0" onclick="javascript:toggleFullScreen()">
                        <img class="icon" src="{{ global_asset('backend/assets/images/icons/full-screen.svg') }}"
                            alt="check in" />
                    </button>
                </div>
            </div>
            {{-- <div class="header-control-item">
                <div class="notification_wrapper position-relative d-none d-xl-flex">
                    <a href="#" class="search-home ">
                        <i class="las la-bell fs_25"></i>
                        @if (count($notifications) > 0)
                        <span class="position-absolute notification_counter ">{{count($notifications)}} 14</span>
                        @endif
                    </a>
                    <div class="notification_items position-absolute">
                        <div class="notification_header">
                            <h3>Notifications</h3>
                        </div>
                        <div class="notification_body d-flex flex-column gap-2">
                            @foreach ($notifications as $notification)
                                <a href="{{route('viewNotification',$notification->id)}}" class="notification_item d-flex align-items-center">
                                    <div class="icon">
                                        <i class="fas fa-bell"></i>
                                    </div>
                                    <div class="notification_item_content flex-fill d-flex align-items-center">
                                        <div class="notification_item_content_left flex-fill">
                                            <h6>{{$notification->title}}</h6>
                                            <p>{{$notification->message}}</p>
                                        </div>
                                        <span class="notification_time">{{ \Carbon\Carbon::parse($notification->created_at)->format('F j Y') }}</span>
                                    </div>
                                </a>
                            @endforeach


                        </div>
                    </div>
                </div>
            </div> --}}


            @php
                use Illuminate\Support\Carbon;
                $today = Carbon::today()->format('m-d');
                $graves = DB::table('graves')
                    ->whereRaw("DATE_FORMAT(date_of_bural, '%m-%d') = ?", [$today])
                    ->get();
                $graves_count = DB::table('graves')
                    ->whereRaw("DATE_FORMAT(date_of_bural, '%m-%d') = ?", [$today])
                    ->count();
            @endphp

            <div class="header-control-item">
                <div class="notification_wrapper position-relative  d-xl-flex">
                    <a href="#" class="search-home ">
                        <i class="las la-bell fs_25"></i>
                        @if (count($graves) > 0)
                            <span class="position-absolute notification_counter "> {{ $graves_count }}</span>
                        @endif
                    </a>
                    <div class="notification_items position-absolute">
                        <div class="notification_header">
                            <h3>{{ ___('common.death_anniversary') }}</h3>
                        </div>
                        <div class="notification_body d-flex flex-column gap-2">
                            @foreach ($graves as $notification)
                                <a href="{{ route('graveslist.filter')}}"
                                    class="notification_item d-flex align-items-center">
                                        <div class="notification_item_content flex-fill d-flex align-items-center">
                                            <div class="notification_item_content_left flex-fill">
                                                <h6>{{ $notification->frist_name }} {{ $notification->last_name }}
                                                </h6>
                                                <p>{{ $notification->relative_frist_name }}
                                                    {{ $notification->relative_second_name }}</p>
                                                <p>{{ $notification->relative_mobile }}</p>
                                            </div>
                                            <span
                                                class="notification_time">{{ \Carbon\Carbon::parse($notification->date_of_bural)->format('F j Y') }}</span>
                                    </form>
                           </div>
                        </a>

                        <hr>
                        @endforeach


                    </div>
                </div>
            </div>
        </div>

        <div class="header-control-item">
            <div class="item-content">
                <button class="profile-navigate mt-0 p-0" type="button" id="profile_expand" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    <div class="profile-photo user-card">
                        <img src="{{ @globalAsset(Auth::user()->upload->path, '40X40.webp') }}"
                            alt="{{ Auth::user()->name }}">
                    </div>
                    <div class="profile-info md-none">
                        <h6>{{ Auth::user()->name }}</h6>
                        <p>{{ @Auth::user()->role->name }}</p>
                    </div>
                </button>
                <div class="dropdown-menu dropdown-menu-end profile-expand-dropdown top-navbar-dropdown-menu ot-card"
                    aria-labelledby="profile_expand">
                    <div class="profile-expand-container">
                        <div class="profile-expand-list d-flex flex-column">
                            <a class="profile-expand-item {{ set_menu(['my.profile'], 'active') }}"
                                href="{{ route('my.profile') }}">
                                <span>{{ ___('common.my_profile') }}</span>
                            </a>
                            <a class="profile-expand-item {{ set_menu(['passwordUpdate'], 'active') }}"
                                href="{{ route('passwordUpdate') }}">
                                <span>{{ ___('common.update_password') }}</span>
                            </a>

                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button type="submit" class="profile-expand-item">
                                    <span>
                                        {{ ___('common.logout') }}</span>
                                </button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</header>
