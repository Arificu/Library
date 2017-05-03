<?php

namespace Laravel;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
	protected $fillable = array('name', 'description', 'image', 'author_id');

    public function author() {
    	return $this->belongsTo('Laravel\Author');
    }

    public function tags() {
        return $this->belongsToMany('Laravel\Tag','book_tags','book_id','tag_id');
    }
}
