<?php

namespace Database\Seeders\WebsiteSetup;

use App\Models\Upload;
use App\Models\NoticeBoard;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\NoticeBoardTranslate;

class NoticeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $images = [
            'frontend/img/blog/01.webp',
            'frontend/img/blog/02.webp',
            'frontend/img/blog/03.webp',
            'frontend/img/blog/04.webp',
            'frontend/img/blog/05.webp',
            'frontend/img/blog/06.webp',
            'frontend/img/blog/07.webp',
            'frontend/img/blog/08.webp',
            'frontend/img/blog/09.webp',
            'frontend/img/blog/10.webp',
            'frontend/img/blog/11.webp',
            'frontend/img/blog/12.webp',
            'frontend/img/blog/13.webp',
        ];
        foreach ($images as $key=>$value) {

            $upload = new Upload();
            $upload->path = $value;
            $upload->save();

            $row          = new NoticeBoard();
            $row->title   = '20+ Academic Curriculum We Done!'.$key;
            $row->description = 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.';
            $row->date        = date("Y-m-d", strtotime("- ".++$key." day"));
            $row->publish_date = date('Y-m-d');
            $row->attachment    = $upload->id;
            $row->is_visible_web = true;
            $row->save();
        }

        foreach ($images as $key=>$value) {
            $row = new NoticeBoardTranslate();
            $row->notice_board_id = $key +1;
            $row->locale = 'en';
            $row->title = '20+ Academic Curriculum We Done!'.$key;
            $row->description = 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.';
            $row->save();
        }
        foreach ($images as $key=>$value) {
            $row = new NoticeBoardTranslate();
            $row->notice_board_id = $key +1;
            $row->locale = 'bn';
            $row->title = '20+ একাডেমিক পাঠ্যক্রম আমরা সম্পন্ন করেছি!'.$key;
            $row->description = 'অনসেস্ট স্কুলে 20,000-এরও বেশি ছাত্র এবং 230,000 প্রাক্তন ছাত্রের বাসস্থান, আগ্রহ, বয়স এবং পটভূমির বিস্তৃত বৈচিত্র্য সহ, বিশ্ববিদ্যালয়টি শহরের জনসংখ্যার গতিশীল মিশ্রণকে প্রতিফলিত করে।';
            $row->save();
        }
    }
}

