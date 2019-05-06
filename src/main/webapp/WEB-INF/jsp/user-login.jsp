<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>

<div class="content-dummy">
	<div class="container">
		<div class="row mt-5">
			<div class="col-lg-7 col-xl-6 mx-auto mt-5">
				<div
					class="card shadow-sm border border-success card-signin flex-row my-5">
					<div class="card-body">
						<h5 class="card-title text-center">Log in</h5>
						<form class="form-signin" action="loginController.jsp">
							<div class="form-label-group">
								<input type="text" id="inputUsername" class="form-control"
									placeholder="Username" required>
							</div>
							<div class="form-label-group my-0">
								<input type="password" id="inputPassword" class="form-control"
									placeholder="Password" required> <span
									class="d-block text-right my-1 mr-3 " href="#"><a
									href="reg.jsp">Forgot password?</a></span>
							</div>
							<div class="row ml-auto">
								<a class="btn btn-md  btn-success text-uppercase text-light"
									type="submit">Log in</a> <a
									class="btn btn-md  ml-2 btn-danger text-uppercase text-light"
									type="reset">reset</a>
							</div>
							<span class="d-block text-center my-2" href="#">Need an
								account ? <a href="/registration">Apply here</a>
							</span>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="fragments/footer.jsp"%>