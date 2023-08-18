<?php

namespace App\Http\Controllers;
use App\Models\Channel;
use Illuminate\Http\Request;

class ChannelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $channel = Channel::all();
        return view('index',compact('channel'))->with('i',(request()->input('page',1)-1)*5);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Channel::create($request->all());
        return redirect()->route('channel.index')->with('Notification','Add Channel successfully');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('edit',compact('channel'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, channel $channel)
    {
        $channel->update($request->all());
        return redirect()->route('channel.index')->with('Notification','Update Channel successfully');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Channel $channel)
    {
        $channel->delete();
        return redirect()->route('channel.index')->with('Notification','Delete Channel successfully');

    }
}
