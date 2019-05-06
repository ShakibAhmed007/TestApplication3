
<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>
<body>
	<div class="container">
		<h1 class="pt-4 mx-auto text-center">All My Post</h1>
		<hr>
		<div class="row pt-3 mt-3">
		
			<div class="form-group col-md-4 mx-auto my-2">
				<form class="form-inline mx-auto" action="">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>

			</div>
			<div class="col-md-4 mr-auto my-2">
				Click Here To <a class="btn btn-primary" href="/add-posts">Add new Posts</a>
			</div>
		</div>
		<hr>
		<br />
		<table class="table table-bordered border table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>UserName</th>
					<th class="px-1">Posted Date</th>
					<th>Subject</th>
					<th>Description</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:forEach items="${userPosts}" var="posts">
				<tbody>
					<tr>
						<td>${posts.id}</td>
						<td>${posts.username}</td>
						<td>${posts.date}</td>
						<td>${posts.category}</td>
						<td>${posts.postDetails}</td>
						<td><a type="button" class="btn btn-info"
							href="/update-post?id=${posts.id}">Update</a></td>
						<td><a type="button" class="btn btn-warning"
							href="/delete-post?id=${posts.id}">Delete</a></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		<div class="col-lg-12 mr-auto my-5">
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item"> <a class="page-link" href="#" tabindex="-1">Previous</a> </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item"><a class="page-link" href="#">Next</a>
				    </li>
				  </ul>
				</nav>
			</div>
	</div>

	<%@include file="fragments/footer.jsp"%>
</body>
</html>