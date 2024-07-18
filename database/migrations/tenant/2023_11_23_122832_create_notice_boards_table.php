<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notice_boards', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->date('date');
            $table->dateTime('publish_date');
            $table->longText('description');
            $table->foreignId('attachment')->nullable()->constrained('uploads')->cascadeOnDelete();
            $table->boolean('is_visible_web')->default(false);
            $table->tinyInteger('status')->default(App\Enums\Status::ACTIVE);
            $table->longText('visible_to')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('notice_boards');
    }
};
