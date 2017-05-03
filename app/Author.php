<?php

namespace Laravel;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
	protected $fillable = array('name', 'description');

    public function books() {
    	return $this->hasMany('Laravel\Book');
    }
}
