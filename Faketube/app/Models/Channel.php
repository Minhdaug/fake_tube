<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    use HasFactory;
    protected $fillable=[
        'ChannelID',
        'ChannelName',
        'Description',
        'SubscribersCount',
        'URL',
        'Created_At',
        'Updated_At',
    ];


}
