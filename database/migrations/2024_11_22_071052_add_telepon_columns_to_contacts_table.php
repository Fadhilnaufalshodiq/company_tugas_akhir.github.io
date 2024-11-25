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
        Schema::table('contact', function (Blueprint $table) {
            $table->string('telepon_wawan')->nullable();
            $table->string('telepon_asti')->nullable();
            $table->string('telepon_adang')->nullable();
        });
    }

    public function down()
    {
        Schema::table('contact', function (Blueprint $table) {
            $table->dropColumn('telepon_wawan');
            $table->dropColumn('telepon_asti');
            $table->dropColumn('telepon_adang');
        });
    }

};