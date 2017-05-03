@extends('layouts.app')

@section('content')
<div class="main">
	<h4>Tags</h4>
	<div class="add">
		<button><a href="/library/public/tag/create">Add new</a></button>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			@foreach($tags as $tag)
				<tr>
					<td>{{ $tag->name }}</td>
					<td>{{ Str_limit( $tag->description , $limit = 50, $end = '...')}}</td>
					<td>
						<button class="action"><a href="{{ route('tag.edit', ['id'=>$tag->id])}}">Edit</a></button>
						<form class="action" action="{{ action('TagController@destroy', ['id'=>$tag->id])}}" method="post">
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
@endsection