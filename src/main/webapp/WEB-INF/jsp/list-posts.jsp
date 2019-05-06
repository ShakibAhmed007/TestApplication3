<%-- <%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>
<body>
	<div class="container">
		<c:forEach items="${userPosts}" var="posts">
			<div class="card mb-3">
				<div class="row no-gutters">
					<div class="col-md-4">
						Posted Date:
						<h2>${posts.date}</h2>
						<br /> User:
						<h4>${posts.username}</h4>
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<h5 class="card-title">${posts.category}</h5>
							<p class="card-text">${posts.postDetails}</p>
							Contact No:<p class="card-text">${posts.contactNumber}</p>
							<p class="card-text">
								<small class="text-muted">${posts.location}</small>
							</p>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<%@include file="fragments/footer.jsp"%>
</body>
</html> --%>

<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>

<div class="container">
	<h1 class="pt-4 mx-auto text-center">All Tution Post</h1>
	<div class="row pt-3 mt-3">

		<div class="form-groupcol-md-6 mx-md-auto  my-2">
			<form class="form-inline" action="">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<div class="form-group">
					<label for="filter" class="mx-1">Search By :</label> <select
						class="form-control mr-3 my-2">
						<option value="0" selected>Select an option</option>
						<option value="0">Subject</option>
						<option value="1">Teacher</option>
						<option value="1">Group</option>
					</select>
				</div>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>

		</div>
	</div>
	<hr class="bg-secondary w-2">
	<br />
	<div class="col-md-12 float-left col px-5 pt-2 main mx-4 mt-4 border"
		style="min-height: 800px;">

		<c:forEach items="${userPosts}" var="posts">
			<div class="row w-100 m-auto">
				<div class="card col-lg-12 p-0 my-2"
					style="box-shadow: 1px 1px 10px black;">
					<div class="card-header p-0">
						<div
							class="col-lg-5 px-1 py-2 float-left text-success text-center">
							<span style="font-weight: 800; font-size: 24px;">Tution-Id</span>
							<!-- substitute tution id -->
							<span class="badge badge-secondary">HSC</span>
							<!-- substitute class -->
							<span class="badge badge-info">English medium </span>
							<!-- substitute Medium / virsion -->
						</div>
						<div class="col-lg-3 py-3 px-0 float-left text-center">
							<span style="font-weight: 800; font-size: 14px;"><span
								class="text-primary" style="font-size: 14px;">Posted
									Date: </span>${posts.date}</span>
						</div>
						<div class="col-lg-2 py-3 px-lg-1 text-center float-left">
							<span style="font-weight: 800; font-size: 14px;">
							<span class="text-primary" style="font-size: 14px;">Location: </span>${posts.location}</span>
						</div>
						<div class="col-lg-1 py-3 px-lg-1 text-center float-left">
							<from>
							<button class="btn btn-success" type="submit">Apply Now</button>
							</from>
						</div>
					</div>
					<div class="card-body text-center pt-1 px-4">${posts.postDetails}</div>
					<div class="card-footer border border-top">
						<div class="col-sm-5 pt-3 float-left text-center">
							<span class="text-primary" style="font-weight: 800; font-size: 16px;">Subjects : </span>${posts.category}
							<!-- substitute all subject separated by comma -->
						</div>
						
						<div class="col-sm-3 pt-3 float-left text-right">
							<b>User : </b> ${posts.username}
						</div>
						<div class="col-sm-4 pt-3 float-left text-center">
							<small><b>Contact : </b>${posts.contactNumber}</small>
							<!-- substitute the payment -->
						</div>
						
						<!-- 
						<div class="col-sm-3 pt-3 float-left text-right">
							<b>Status : </b> Available / Not available
						</div>
						 -->
					</div>
				</div>
			</div>
		</c:forEach>

		<div class="col-lg-12 mr-auto my-5">
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						tabindex="-1">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
		</div>
	</div>

</div>
<%@include file="fragments/footer.jsp"%>