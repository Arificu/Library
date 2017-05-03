@extends('layouts.app')

@section('content')
<div class="main">
	<h4>Books</h4>
	<div class="add">
		<button><a href="/library/public/book/create">Add new</a></button>
	</div>
	<div>
		<table class="table">
			<thead>
				<tr>
					<th>Cover</th>
					<th>Title</th>
					<th>Author</th>
					<th>Tags</th>
					<th>Description</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				@foreach($books as $book)
					<tr>
						<td><img src="{{$book->image}}" alt="{{$book->image}}"></td>
						<td>{{ $book->name }}</td>
						<td>{{ $book->author->name }}</td>
						<td></td>
						<td>{{ Str_limit( $book->description , $limit = 50, $end = '...')}}</td>
						<td>
							<button class="action"><a href="{{ route('book.edit', ['id'=>$book->id])}}">Edit</a></button>
							<form class="action" action="{{ action('BookController@destroy', ['id'=>$book->id])}}" method="post">
								<input type="hidden" name="_method" value="delete">
								<input type="hidden" name="_token" value="{{ csrf_token() }}">
								<input type="submit" name="delete" value="Delete">
							</form>
							<button class="action">Rent</button>
						</td>
					</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>

@endsection
