<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>
<div class="content-dummy">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-xl-7 mx-auto mt-5">
				<div class="card border border-success card-signin flex-row my-5">
					<div class="card-body">
						<h5 class="card-title text-center">Register</h5>
						
						<form class="form-signin" action="registrationController.jsp">
							
							<div class="row mx-auto">
								<div class="form-label-group col-md-5 px-0">
									<input name="first_name" type="text" id="inputFirstname"
										class="form-control" placeholder="First name" required
										autofocus>
								</div>
								<div class="form-label-group col-md-5 ml-auto px-0">
									<input name="last_name" type="text" id="inputLastname"
										class="form-control" placeholder="Last name" required>
								</div>
							</div>
							
							<div class="form-label-group">
								<input name="username" type="text" id="inputUsername"
									class="form-control" placeholder="Username" required>

							</div>

							<div class="form-label-group">
								<input name="email" type="email" id="inputEmail"
									class="form-control" placeholder="Email address" required>

							</div>

							<div class="form-label-group">
								<input name="password" type="password" id="inputPassword"
									class="form-control" placeholder="Password" required>
							</div>

							<div class="form-label-group">
								<input name="confirm_password" type="password"
									id="inputConfirmPassword" class="form-control"
									placeholder="Confirm Password" required>
							</div>
							
							<div class="form-label-group">
								<input name="present_address" type="text" id="presentAddress"
									class="form-control" placeholder="Present address" required>
							</div>
							
							<div class="form-label-group">
								<input name="permanent_address" type="text"
									id="permanentAddress" class="form-control"
									placeholder="Permanent address" required>
							</div>
							
							<div class="form-label-group">
								<input name="contact_number" type="text" id="contactNumber"
									class="form-control" placeholder="Contact number" required>
							</div>
							
							<div class="row  mx-auto">
								<div class="form-label-group col-md-5 px-0">
									<!--<input name="dob" type="text" id="dob" class="form-control" placeholder="Date of birth">-->
								</div>
								
							</div>
							
							<div class="row mx-auto">
								<div class="form-label-group col-md-5 px-0  ml-auto">
									<label class="control-label ml-2 lead" for="sex">Sex :</label>
									<label class="radio-inline mx-1 lead"><input
										type="radio" name="sex" value="male" cheched />Male</label> <label
										class="radio-inline lead"><input type="radio"
										name="sex" value="female" />Female</label>
								</div>
								<div class="form-label-group col-md-5 px-0 ml-auto">
									<button class="btn btn-md mr-2 btn-primary text-uppercase text-light" type="submit"> Register <button>
									<button class="btn btn-md px-4 btn-danger text-uppercase text-light" type="reset">reset</button>
								</div>
							</div>
							<span class="d-block text-center my-2">Already have an account? <a href="/user-login">Login here</a>
							</span>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="fragments/footer.jsp"%>