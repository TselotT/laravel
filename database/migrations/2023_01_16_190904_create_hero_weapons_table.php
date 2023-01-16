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
        Schema::create('hero_weapon', function (Blueprint $table) {
            $table->integer('hero_id')->unsigned();
            $table->integer('weapon_id')->unsigned();
            $table->foreign('hero_id')
                ->references('id')
                ->on('weapon_id')
                ->onDelete('cascade');
            $table->foreign('weapon_id')
                ->references('id')
                ->on('hero_id')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hero_weapons');
    }
};
