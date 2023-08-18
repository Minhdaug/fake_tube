@extends('layout')

@section('content')
<div class = "container">
    <div class = "card ">
        <div class = "card-header">
            <div class = "row">
                   <div class="col-md-6">
                        <h3>LIST CHANNEL</h3> 
                   </div> 
                   <div class="col-md-6">
                    <a href="{{route('channel.create')}}" class ="btn btn-primary float-end">Add Channel</a>
                   </div>
            </div>

        </div>
        <div class = "card-boby">
            @if(Session::has('Notification'))
                <div class="alert alert-success">
                    {{Session::get('Notification')}}
                </div>

            @endif
            <table class="table table-bordered ">
                <thead>
                    <tr>
                        <th>ChannelID</th>
                        <th>ChannelName</th>
                        <th>Description</th>
                        <th>SubscribersCount</th>
                        <th>URL</th>
                        <th>Created_At</th>
                        <th>Updated_At</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($channel as $cn)
                    <tr>
                        <td>{{$cn->ChannelID}}</td>
                        <td>{{$cn->ChannelName}}</td>
                        <td>{{$cn->Description}}</td>
                        <td>{{$cn->SubscribersCount}}</td>
                        <td>{{$cn->URL}}</td>
                        <td>{{$cn->Created_At}}</td>
                        <td>{{$cn->Updated_At}}</td>
                        <td>
                            <form action method="POST">
                                <a href class="btn btn-info">Edit</a>
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>

                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
</div>
@endsection
