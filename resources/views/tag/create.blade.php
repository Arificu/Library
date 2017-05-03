@extends('layouts.app')

@section('content')
<div class="main">
	<h4>Add new tag</h4>
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
			<form action="{{action('TagController@store')}}" method="post">
				<input type="hidden" name="_method" value="POST">
				<input type="hidden" name="_token" value="{{ csrf_token() }}">
				<div class="row inputs">
					<label for="name" class="col-sm-5">Name:</label>
					<input type="text" name="name" class="col-sm-7">
				</div>
				<div class="row inputs">
					<label for="description" class="col-sm-5">Description:</label>
					<textarea name="description" class="col-sm-7" rows="8"></textarea>
				</div>
				<div class="row inputs">
					<span class="col-sm-5"></span>
					<span class="col-sm-7">
						<input type="submit" name="submit" value="Save" class="btn submit">
						<input type="button" name="cancel" value="Cancel" class="btn submit" onClick="window.location='/library/public/tag';" />
					</span>
				</div>	
			</form>
		</div>
	</div>
</div>
@endsection