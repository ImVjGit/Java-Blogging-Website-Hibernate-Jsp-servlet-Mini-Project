<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.hibernate.query.Query"%>
<%@ page import="java.util.*"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="com.servlet.blog.*"%>
<%@ page import="com.sessionFactory.*"%>
<%@ page import="com.entity.blog.*"%>

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
.inside{
 border:thick;
border-color:black;
text-shadow:blue;
	top:25%;
	left:15%; 
	position: absolute;
	width: 610px;
	height:510px;
}
</style>
<title>Display all Blog</title>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light mx-auto">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="#" style="font-weight: bold;">Create
				Blog</a>

			<div class="collapse navbar-collapse pl-6" style="font-weight: bold;">
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
	<div class=" container text-center">
		<h1>All Blog</h1>
	</div>

<div class="inside">
	<div class="row">
		<div class="col-12">
			<%
			Session s = GetSessionFactory.getFactorySession().openSession();
			Query q = s.createQuery("from Blog");
			List<Blog> list = q.list();
			for (Blog blog : list) {
			%>

			<div class="card mt-30 bg-white text-dark">
				<img class="card-img-top pl-4 pt-4" style="max-width: 100px"
					src="img/blog.png" alt="Card image cap">
				<div class="card-body pl-4 pt-4"
					style="max-width: 100px, max-height:50px">
					<h5 class="card-titlepl-4 pt-4">
						ID :
						<%=blog.getId()%></h5>
					<h5 class="card-title "><%=blog.getTitle()%></h5>
					<p class="card-text "><%=blog.getPost()%></p>
					<a href="ServletDeleteData?Id=<%=blog.getId()%>"
						class="btn btn-danger">Delete</a> <a
						href="Update.jsp?Id=<%=blog.getId()%>" class="btn btn-primary">Update</a>
				</div>
			</div>


			<%
			}

			s.close();
			%>

		</div>
	</div>
	</div>




</body>
</html>