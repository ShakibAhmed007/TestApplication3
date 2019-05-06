
<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>
<div class="content-dummy">
	<div class="container">
		<div class="row mt-5">
			<div class="col-lg-7 col-xl-6 mx-auto mt-5">
				<h1 class="text-center">Dashboard</h1>
				<div class="card card-signin flex-row my-5">
					<div class="card-body text-center">
						<h5 class="card-title text-center">Welcome ${name}</h5>
						<div class="bg-light">
							Click Here To <a class="btn btn-primary" href="/list-posts">View All Posts</a> <br /> <br />
							Click Here To <a class="btn btn-primary" href="/add-posts">Add new Posts</a> <br /> <br />
							Click Here To <a class="btn btn-primary" href="/my-posts">View my Posts</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="fragments/footer.jsp"%>