@extends('layouts.app')

@section('content')
<div class="main">
	<h4>Add new book</h4>
	@if (count($errors) > 0)
	    <div class="alert alert-danger">
	        <ul>
	            @foreach ($errors->all() as $error)
	                <li>{{ $error }}</li>
	            @endforeach
	        </ul>
	    </div>
	@endif
	<div class="row">
		<div class="col-sm-4">
			<form action="{{action('BookController@store')}}" method="post" enctype="multipart/form-data">
				<input type="hidden" name="_method" value="POST">
				<input type="hidden" name="_token" value="{{ csrf_token() }}">
				<div class="row inputs">
					<label for="name" class="col-sm-5">Title:</label>
					<input type="text" name="name" class="col-sm-7">
				</div>
				<div class="row inputs">
					<label for="author_id" class="col-sm-5">Author:</label>
					<select name="author_id" class="col-sm-7">
						<option value=""></option>
						@foreach ($authors as $author)
						<option @if ("selected") value="{{ $author->id }}" @endif >{{ $author->name }}</option>
						@endforeach
					</select>
				</div>
				<div class="row inputs">
					<label for="tag" class="col-sm-5">Tags:</label>
					<div class="col-sm-7">
						@foreach ($tags as $tag)
							<input type="checkbox" name="tag_id" @if ("checked") value="{{ $tag->id }}" @endif>{{ $tag->name }}</br>
						@endforeach
					</div>
				</div>
				<div class="row inputs">
					<label for="description" class="col-sm-5">Description:</label>
					<textarea name="description" class="col-sm-7" rows="8"></textarea>
				</div>
				<div class="row inputs">
					<label for="name" class="col-sm-5">Cover:</label>
					<input type="file" name="image" class="col-sm-7">
				</div>
				<div class="row inputs">
					<span class="col-sm-5"></span>
					<span class="col-sm-7">
						<input type="submit" name="submit" value="Save" class="btn submit">
						<input type="button" name="cancel" value="Cancel" class="btn submit" onClick="window.location='/library/public/book';" />
					</span>
				</div>	
			</form>
		</div>
	</div>
</div>
@endsection