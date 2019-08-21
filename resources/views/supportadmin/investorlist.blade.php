<!DOCTYPE html>
<html>
<head>
	<title>Student List</title>
</head>
<body>

	<h2>Student List:</h2>
	
	<a href="/supportdamin">Back</a> |
	<a href="/logout">logout</a>

	<table border="1">
		<tr>
			<td>ID</td>
			<td>username</td>
			<td>password</td>
			<td>type</td>
			<td>name</td>
			<td>email</td>
			<td>phone</td>
		</tr>
		@foreach($std as $value)
		<tr>
			<td>{{$value['id']}}</td>
			<td>{{$value['username']}}</td>
			<td>{{$value['password']}}</td>
			<td>{{$value['type']}}</td>
			<td>{{$value['name']}}</td>
			<td>{{$value['email']}}</td>
			<td>{{$value['phone']}}</td>

			<td>
			

			<a href="{{route('supportdamin.editinvestor', $value['id'])}}">Edit</a>
				 <a href="{{route('supportdamin.deleteinvestor', $value['id'])}}">Delete</a>
			</td>
		</tr>
		@endforeach

</table>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>



	<table border="1">
		<tr>
			<td>ID</td>
			<td>username</td>
			<td>carnumber</td>
			<td>balance</td>
			<td>status</td>
			<td>type</td>
			
		</tr>
		@foreach($iac as $val)
		<tr>
			<td>{{$val['id']}}</td>
			<td>{{$val['username']}}</td>
			<td>{{$val['card_number']}}</td>
			<td>{{$val['balance']}}</td>
			<td>{{$val['status']}}</td>
			<td>{{$val['type']}}</td>

			<td>
			

				 <a href="{{route('supportdamin.activeinvestor', $val['id'])}}">Active</a>
				  <a href="{{route('supportdamin.deactiveinvestor', $val['id'])}}"> DEActive</a>
				
			</td>

			
		</tr>
		@endforeach

</table>

</body>
</html>