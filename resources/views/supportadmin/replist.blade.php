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

</body>
</html>