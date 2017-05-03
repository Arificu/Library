@extends('layouts.app')

@section('content')
<div class="main">
	<h4>Authors</h4>
	<div class="add">
		<button><a href="/library/public/author/create">Add new</a></button>
	</div>
	<div>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				@foreach($authors as $author)
					<tr>
						<td>{{ $author->name }}</td>
						<td>{{ Str_limit( $author->description , $limit = 50, $end = '...')}}</td>
						<td>
							<button class="action"><a href="{{ route('author.edit', ['id'=>$author->id])}}">Edit</a></button>
							<form class="action" action="{{ action('AuthorController@destroy', ['id'=>$author->id])}}" method="post">
								<input type="hidden" name="_method" value="delete">
								<input type="hidden" name="_token" value="{{ csrf_token() }}">
								<input type="submit" name="delete" value="Delete">
							</form>
						</td>
					</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>
@endsection