<?php

namespace Laravel\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Laravel\Author;
use Laravel\Book;
use Laravel\Tag;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::all();

        return view('book.index', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $authors = Author::all();
        $tags = Tag::all();
        return view('book.create', compact('authors', 'tags'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'description' => 'required',
            'image' => 'required',
            'author_id' => 'required',
        ]);
        if ($validator->fails()) {
            return redirect('book/create')
                        ->withErrors($validator)
                        ->withInput();
        }
        $book = new Book();
        $book->name = $request->name;
        $book->author_id = $request->author_id;
        // $book->tag_id = $request->tag_id;
        $book->description = $request->description;
        $book->image = $request->file('image');
        $book->save();
    
        $request->image->store('public');
        return redirect()->route('book.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $book = Book::findOrFail($id);
        $authors = Author::all();
        $tags = Tag::all();

        return view('book.edit', compact('book', 'authors', 'tags'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'description' => 'required',
            'image' => 'required',
            'author_id' => 'required',
        ]);
        if ($validator->fails()) {
            return redirect('book/create')
                        ->withErrors($validator)
                        ->withInput();
        }
        
        $book = Book::findOrFail($id);
        $book->name = $request->name;
        $book->author_id = $request->author_id;
        // $book->tag_id = $request->tag_id;
        $book->description = $request->description;
        $book->image = $request->file('image');
        $book->save();
    
        $request->image->store('public');
        return redirect()->route('book.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Book::findOrFail($id);
        $book->delete();

        return redirect()->route('book.index');
    }
}
