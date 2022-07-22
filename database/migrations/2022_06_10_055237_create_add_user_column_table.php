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
        Schema::table('users', function (Blueprint $table) {
            $table->string('unique_id', 100);
            $table->integer('status')->default(1)->comment('1 = Active, 0 = Inactive');
            $table->text('description')->nullable();
            $table->integer('created_by');
            $table->integer('updated_by');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('unique_id');
            $table->dropColumn('status');
            $table->dropColumn('description');
            $table->dropColumn('created_by');
            $table->dropColumn('updated_by');

        });
    }
};
