<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFormsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('forms', function (Blueprint $table) {
            $table->increments('id');
            $table->uuid('form_id');
            $table->string('name');
            $table->string('father_name');
            $table->string('cnic');
            $table->string('cell');
            $table->string('occupation');
            $table->string('soi');
            $table->string('address');
            $table->string('funds');
            $table->string('payment_details');
            $table->string('status');
            $table->string('land_from');
            $table->integer('user_id');
            $table->integer('assigned_to')->default(0);
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
        Schema::dropIfExists('forms');
    }
}
