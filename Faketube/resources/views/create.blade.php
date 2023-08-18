@extends('layout')
@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Add Channel</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{route('channel.index')}} " class="btn btn-primary float-end">List Channel</a>
                </div>
            </div>

        </div>
        <div class="card-body">
            <form action="{{route('channel.store')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>ChannelID</strong>
                            <input type="text" name ="ChannelID" class="form-control" placeholder="ChannelID">
                        </div>
                        <div class="form-group">
                            <strong>ChannelName</strong>
                            <input type="text" name ="ChannelName" class="form-control" placeholder="ChannelName">
                        </div>
                        <div class="form-group">
                            <strong>Description</strong>
                            <input type="text" name ="Description" class="form-control" placeholder="Description" >
                        </div>
                    </div>
                    <div class="md-col-6">
                        <div class="form-group">
                            <strong>SubscribersCount</strong>
                            <input type="integer" name ="SubscribersCount" class="form-control" placeholder="SubscribersCount" >
                        </div>
                        <div class="form-group">
                            <strong>URL</strong>
                            <input type="text" name ="URL" class="form-control" placeholder="URL">
                        </div>
                        <div class="form-group">
                            <strong>Created_At</strong>
                            <input type="date" name ="Created_At" class="form-control" placeholder="Created_At">
                        </div>
                        <div class="form-group">
                            <strong>Updated_At</strong>
                            <input type="date" name ="Updated_At" class="form-control" placeholder="Updated_At">
                        </div>
                    </div>
                </div>
                <button type="sumbit" class="btn btn-success mt-2">Save</button>
            </form>
        </div>
    </div>
</div>
@endsection
