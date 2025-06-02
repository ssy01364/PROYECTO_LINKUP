<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::table('sectores', function (Blueprint $table) {
        $table->string('imagen')->nullable()->after('nombre');
    });
}

public function down()
{
    Schema::table('sectores', function (Blueprint $table) {
        $table->dropColumn('imagen');
    });
}

};
