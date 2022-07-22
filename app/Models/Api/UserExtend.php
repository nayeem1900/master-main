<?php

namespace App\Models\Api;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserExtend extends Model
{
    use HasFactory;
    protected $table = 'user_extend_props';
    protected $fillable = [
        'user_id',
        'field_name',
        'value',
    ];
}
