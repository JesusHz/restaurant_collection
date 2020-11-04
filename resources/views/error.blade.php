@extends('Template.master')

@section('portada')
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>ERROR</title>

	<link href="https://fonts.googleapis.com/css?family=Nunito:400,700" rel="stylesheet">

	<link type="text/css" rel="stylesheet" href="{!! asset('assets/css/error_style.css') !!}" />

</head>

<body>

	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404"></div>
			<h1>ERROR</h1>
			<h2>Oops!</h2>
			<p>{{$msj}}</p>
			<a href="cruds">REGRESAR</a>
		</div>
	</div>

</body>

</html>
@endsection()
