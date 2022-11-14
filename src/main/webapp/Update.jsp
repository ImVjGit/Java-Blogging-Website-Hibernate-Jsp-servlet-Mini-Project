<%@page import="org.hibernate.query.Query"%>
<%@ page import="java.util.*"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="com.servlet.blog.*"%>
<%@ page import="com.sessionFactory.*"%>
<%@ page import="com.entity.blog.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <style>
* {
	background-image: url('img/blogbg.jpg');
	background-repeat: no-repeat;
	background-attachment:fixed;
	background-size: 100% 100%;
	text-shadow: blue;

}
</style>
<title>Update</title>
</head>
<body>
	<div class="container">
			<div>
			<nav class="navbar navbar-expand-lg navbar-light bg-light mx-auto">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#"style="font-weight: bold;" >Create Blog</a>

  <div class="collapse navbar-collapse pl-6" style="font-weight: bold;" >
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp" style="font-weight: bold;">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Add.jsp" style="font-weight: bold;">Add Note</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="Display.jsp" style="font-weight: bold;">Display</a>
      </li>
    </ul>
   
  </div>
</nav>
		</div>
	</div>
	<div class="container text-center" ><h2>Update Blog </h2></div>
	<div class="container pt-5 text-white ">
		<%
		int blogid = Integer.parseInt(request.getParameter("Id"));
		System.out.println(blogid);
		Session s = GetSessionFactory.getFactorySession().openSession();
		Transaction tx = s.beginTransaction();
		Blog blog = (Blog) s.get(Blog.class, blogid);
		%>
		<form action="ServletUpdateBlog" method="post">
		<input  value="<%= blog.getId() %>"  name="Id" type="hidden"/> 
			<div class="continer">
				<label for="title  pr-3"><h4>Title</h4> </label> <input type="text"
					name="titledata" id="title " placeholder="Enter Title" 
					value="<%=blog.getTitle()%>" required>

			</div class="container">
			<div class="form-group ">
				<label><h6>Post</h6></label>

				<textarea class="form-control text-white" name="contantdata"
					style="min-height: 400px;" required><%=blog.getPost()%></textarea>
			</div>
	</div>
	</div>

	<div class="container text-center">
		<button type="submit" class="btn btn-success">Save</button>
	</div>
	</form>


	</div>
</body>
</html>