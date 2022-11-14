<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
* {
	background-image: url('img/blogbg.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	text-shadow: blue;
	color: white;
}
</style>
<title>Add Blog</title>
</head>
<body>

	<div class="container">
		<div>
			<nav class="navbar navbar-expand-lg navbar-light bg-light mx-auto">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarTogglerDemo03"
					aria-controls="navbarTogglerDemo03" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="index.jsp" style="font-weight: bold;">Create
					Blog</a>

				<div class="collapse navbar-collapse pl-6"
					style="font-weight: bold;">
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
						<li class="nav-item active"><a class="nav-link"
							href="index.jsp" style="font-weight: bold;">Home <span
								class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="Add.jsp"
							style="font-weight: bold;">Add Note</a></li>
						<li class="nav-item"><a class="nav-link " href="Display.jsp"
							style="font-weight: bold;">Display</a></li>
					</ul>

				</div>
			</nav>
		</div>
		<div>
			<div class="container text-center">
				<h1>Add New Blog</h1>
			</div>
			<form action="ServletSaveBlog" method="post">
				<div class="continer">
					<label for="title ml-3">Title</label> <input type="text"
						name="titledata" id="title " placeholder="Enter Title" required>

				</div class="container">
				<div class="form-group">
					<label>Post</label>

					<textarea class="form-control text-white bg-dark"
						name="contantdata" style="min-height: 300px"
						placeholder="Enter your data here " required></textarea>
				</div>
		</div>
	</div>

	<div class="container text-center">
		<button type="submit" class="btn-primary">Submit</button>
	</div>
	</form>
	</div>
	</div>
</body>
</html>