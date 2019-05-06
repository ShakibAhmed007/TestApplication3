<nav class="navbar navbar-transparent navbar-expand-lg navbar-light bg-dark">
	<button class="navbar-toggler navbar-toggler-light bg-secondary ml-auto" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<a class="navbar-brand text-light py-0" href="/index"><img class="rounded-circle" src="images/logo.jpg" alt=""/> Tutor's Point</a>
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item active"><a class="nav-link text-light" href="/list-posts">Home</a></li>
			
			<!-- added by nz -->
			<li class="nav-item "><a class="nav-link text-light" href="/user-home-page">Dashboard</a></li>
			<!-- end -->
			
			<li class="nav-item"><a class="nav-link text-light" href="/my-post">My Posts</a></li>
			<li class="nav-item"><a class="nav-link text-light" href="/add-posts">Add New Post</a></li>
			<li class="nav-item"><a class="nav-link text-light" href="/view-report">Report</a></li>
		</ul>
		<form class="form-inline justify-content-center my-2 my-lg-0">
		
			<!--logged in users can see this block  -->
			<h5 class="text-light mr-2">Welcome ${username}</h5>
			<a class="btn btn-outline-success my-2 my-sm-0" href="/logout">Logout</a>
			<!-- end -->
			
		</form>
	</div>
</nav>