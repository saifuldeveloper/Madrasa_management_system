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
        Schema::create('graves', function (Blueprint $table) {
            $table->id();
            $table->string('grave_row');
            $table->integer('grave_no');
            $table->string('frist_name');
            $table->string('last_name')->nullable();
            $table->string('gender')->nullable();
            $table->date('date_of_birth')->nullable();
            $table->date('date_of_bural')->nullable();
            $table->string('address')->nullable();
            $table->string('father_name')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('blood_group')->nullable();
            $table->text('note')->nullable();
            $table->string('old')->nullable();
            $table->string('relative_frist_name');
            $table->string('relative_second_name')->nullable();
            $table->string('relative_email')->nullable();
            $table->string('name_of_the_relationship')->nullable();
            $table->string('relative_present_address')->nullable();
            $table->string('relative_parmanent_address')->nullable();
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
        Schema::dropIfExists('graves');
    }
};
