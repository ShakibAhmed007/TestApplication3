<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>
<div class="content-dummy">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-xl-7 mx-auto mt-5">
				<div class="card border border-success card-signin flex-row my-5">
					<div class="card-body mx-auto">
						<h1 class="text-center my-2">Edit Posts</h1>
						<hr>
						<form:form method="post" action="/edit-post"
							modelAttribute="userPostBean">
							<form:hidden path="id"></form:hidden>
							<form:hidden path="username"></form:hidden>
							<form:hidden path="date"></form:hidden>
							<fieldset class="formgroup">
								<form:label path="postDetails">Description : </form:label>
								<form:input type="text" path="postDetails" id="postDetails"
									required="required"></form:input>
								<form:errors path="postDetails"></form:errors>
							</fieldset>
							<fieldset class="formgroup">
								<form:label path="location">Location : </form:label>
								<form:input type="text" path="location" id="location"
									required="required"></form:input>
								<form:errors path="location"></form:errors>
							</fieldset>
							<fieldset class="formgroup">
								<form:label path="category">Subject : </form:label>
								<form:input type="text" path="category" id="category"
									required="required"></form:input>
								<form:errors path="category"></form:errors>
							</fieldset>
							<fieldset class="formgroup">
								<form:label path="experience">Experience : </form:label>
								<form:input type="text" path="experience" id="experience"
									required="required"></form:input>
								<form:errors path="experience"></form:errors>
							</fieldset>
							<fieldset class="formgroup">
								<form:label path="contactNumber">Contact Number : </form:label>
								<form:input type="text" path="contactNumber" id="contactNumber"
									required="required"></form:input>
								<form:errors path="contactNumber"></form:errors>
							</fieldset>
							<button type="submit" class="btn btn-primary">Update
								Post</button>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="fragments/footer.jsp"%>