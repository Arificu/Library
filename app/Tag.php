<?php

namespace Laravel;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
	protected $fillable = array('name', 'description');

    public function books() {
        return $this->belongsToMany('Laravel\Book','book_tags','book_id','tag_id');
    }
}
