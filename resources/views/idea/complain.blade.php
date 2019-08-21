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
			<td>Support Admin</td>
			<td>Investro</td>
			<td>Status</td>
			<td>Balance</td>
		
		</tr>
		@foreach($std as $value)
		<tr>
			<td>{{$value['id']}}</td>
			<td>{{$value['supportadmin']}}</td>
			<td>{{$value['investor']}}</td>
			<td>{{$value['status']}}</td>
			<td>{{$value['balance']}}</td>

			<td>
			
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
			<td>complain</td>
			<td>type</td>
			<td>status</td>
			
			
		</tr>
		@foreach($iac as $val)
		<tr>
			<td>{{$val['id']}}</td>
			<td>{{$val['username']}}</td>
			<td>{{$val['complain']}}</td>
			<td>{{$val['type']}}</td>
			<td>{{$val['status']}}</td>
	

			<td>
			
                  <a href="{{route('supportadmin.checkcomplain', $val['id'])}}"> Check</a>
				
			</td>

			
		</tr>
		@endforeach

</table>

</body>
</html>