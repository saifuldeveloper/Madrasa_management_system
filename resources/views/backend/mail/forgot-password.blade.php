<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        *{
            margin: 0;
            padding: 0;
        }

        .page-content {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        a {
            text-decoration: none;
        }

        .email-template {
            font-family: "Lexend", sans-serif;
            text-align: center;
            padding: 56px 60px;
            background: white;
            border-radius: 5px;
            max-width: 600px;
            box-shadow: 1px 1px 20px 1px #d5d5d5;
        }

        .email-template .template-heading h1 {
            font-family: "Lexend", sans-serif;
            font-weight: 600;
            font-size: 24px;
            line-height: 34px;
            margin-top: 20px;
        }

        .email-template .template-heading p {
            font-family: "Lexend", sans-serif;
            font-size: 16px;
            line-height: 24px;
            color: #6f767e;
            margin-top: 20px;
        }

        .email-template .template-heading .color-black {
            color: #1a1d1f;
        }

        .email-template .template-body {
            font-family: "Lexend", sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 24px;
            color: #6f767e;
            padding: 14px;
        }

        .email-template .template-body .content-part {
            text-align: left;
            margin-bottom: 28px;
        }

        .email-template .template-body .content-part p a {
            font-family: "Lexend", sans-serif;
            color: #0f6aff;
        }

        .email-template .template-body .content-part h5 {
            font-family: "Lexend", sans-serif;
            color: #1a1d1f;
            margin-top: 28px;
            padding: 0;
        }

        .email-template .template-body .content-details p {
            font-family: "Lexend", sans-serif;
            padding: 0 14px;
            margin-bottom: 28px;
        }

        .email-template .template-body .content-details p .link {
            color: #0f6aff;
        }

        .email-template .template-body .ot-primary-text {
            font-family: "Lexend", sans-serif;
            font-weight: 600;
            font-size: 16px;
            line-height: 24px;
            color: #0f6aff;
            margin-top: 26px;
        }

        .email-template .template-body h4 {
            font-family: "Lexend", sans-serif;
            font-weight: 600;
            font-size: 16px;
            color: #29d697;
        }

        .email-template .template-body h5 {
            font-family: "Lexend", sans-serif;
            padding: 0 14px;
        }

        .email-template .template-button-group {
            display: flex;
            align-items: center;
            justify-content: center;
            padding-left: 14px;
            gap: 10px;
        }

        .email-template .template-button-group .template-btn {
            padding: 9px 2px;
            border-radius: 7px;
            background: linear-gradient(90deg, #0f6aff 0%, #21c6fb 100%);
        }

        .email-template .template-button-group .template-btn span {
            font-family: "Lexend", sans-serif;
            padding: 10px 16px;
            font-weight: 600;
            color: white;
            background: linear-gradient(90deg, #0f6aff 0%, #21c6fb 100%);
        }

        .email-template .template-button-group .template-btn span:hover {
            outline: none;
            border: none;
            color: #0f6aff;
            border-radius: 5px;
            background: white;
        }

        .email-template .template-btn-container {
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }

        .email-template .template-btn-container .template-btn {
            padding: 9px 2px;
            border-radius: 7px;
            background: linear-gradient(90deg, #0f6aff 0%, #21c6fb 100%);
        }

        .email-template .template-btn-container .template-btn span {
            font-family: "Lexend", sans-serif;
            padding: 10px 16px;
            font-weight: 600;
            color: white;
            background: linear-gradient(90deg, #0f6aff 0%, #21c6fb 100%);
        }

        .email-template .template-btn-container .template-btn span:hover {
            outline: none;
            border: none;
            color: #0f6aff;
            border-radius: 5px;
            background: white;
        }

        .email-template .template-footer {
            font-family: "Lexend", sans-serif;
            font-weight: 500;
            font-size: 12px;
            line-height: 15px;
            color: #6f767e;
            border-top: 1px solid #dfe6e9;
            margin-top: 26px;
        }

        .email-template .template-footer p>a {
            color: #0f6aff;
        }

        .email-template .template-footer .social-media-button {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 26px;
            gap: 8px;
        }

        .email-template .template-footer .social-media-button a {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 8.5px;
            border-radius: 50%;
            background: linear-gradient(90deg, #0f6aff 0%, #21c6fb 100%);
        }

        .email-template .template-footer .social-media-button a:hover {
            background: linear-gradient(90deg, #21c6fb 0%, #0f6aff 100%);
        }

        .email-template .template-footer .template-footer-image {
            margin-top: 28px;
            margin-bottom: 8px;
        }

        @media (max-width: 576px) {
            .email-template {
                padding: 26px 30px;
            }

            .email-template .template-heading h1 {
                font-size: 20px;
                padding: 0 10px;
            }

            .email-template .template-heading p {
                font-size: 16px;
                padding: 0 8px;
            }

            .email-template .template-body {
                font-weight: 400;
                font-size: 14px;
                line-height: 24px;
                color: #6f767e;
            }

            .email-template .template-body p {
                padding: 0;
            }

            .email-template .template-body .template-content-image img {
                width: 100%;
                height: 100%;
            }

            .email-template .template-body h5 {
                padding: 0;
            }

            .email-template .template-button-group {
                flex-direction: column;
                padding: 0;
            }

            .email-template .template-button-group button {
                width: 100%;
            }

            .email-template .template-footer {
                font-size: 7px;
            }
        }

        @media (max-width: 420px) {
            .email-template {
                padding: 20px 7px;
            }
            .email-template .template-body {
                font-size: 12px;
            }
            .email-template .template-body .ot-primary-text {
                margin-top: 26px;
            }
        }
    </style>
</head>
<body>
<div class="page-content">
    <div class="email-template">
        <div class="template-heading">
            <img src="{{ @globalAsset(setting('favicon')) }}" alt="Frame">
        </div>
        <div class="template-body">
            <div class="content-part">
                <p class="ot-primary-text">{{ ___('common.forgot_password_otp') }}</p>
                <p>{{ ___('common.dear') }},  {{ $data['email'] }}</p><br>
                <p>
                    {{ ___('common.your_6_digits_forgot_password_otp_is') }} <b>{{ $data['otp'] }}</b>.
                </p>
            </div>
        </div>
        <div class="template-footer">
            <div class="template-footer-image">
                <img src="{{ @globalAsset(setting('light_logo'), '154X38.webp') }}" alt="Logo">
            </div>
            <p>{{ Setting('footer_text') }}</p>
        </div>
    </div>
</div>
</body>
</html>
