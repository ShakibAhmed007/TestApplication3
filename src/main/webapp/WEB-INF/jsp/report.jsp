<%@include file="fragments/header.jsp"%>
<%@include file="fragments/navbar.jsp"%>
<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="/webjars/chartjs/2.7.3/Chart.bundle.js"></script>
<script src="/webjars/chartjs/2.7.3/Chart.bundle.min.js"></script>
<script src="/webjars/chartjs/2.7.3/Chart.js"></script>
<script src="/webjars/chartjs/2.7.3/Chart.min.js"></script>

	<div class="container">
		<input type="hidden" id="date" value="${date}"></input> <input
			type="hidden" id="value" value="${value}"></input> <input
			type="hidden" id="division" value="${division}"></input> <input
			type="hidden" id="divisionValue" value="${divisionValue}"></input>
			
			<h3 class="text-center my-4">Graphical Representation of user post</h3>
			<hr>
		<div class="row my-5">
			<div class="col-lg-6 justify-content-center">
				<canvas id="myChart1" width="200" height="100"></canvas>
				<h4 class="text-center mt-2 mb-4">Post By Date [Bar]</h4>
			</div>
			<br />
			<div class="col-lg-6 justify-content-center">
				<canvas id="myChart2" width="200" height="100"></canvas>
				<h4 class="text-center mt-2 mb-4">Post By Date [Line]</h4>
			</div>
			<br />
		</div>
		<div class="row my-5 mx-auto justify-content-center">
			<div class="col-lg-6">
				<canvas id="myChart3" width="200" height="100"></canvas>
				<h4 class="text-center mt-2 mb-4">Post By Area [Line]</h4>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(
				function() {

					var date = $('#date').val();
					var value = $('#value').val();
					var dateArr = date.split(',');
					var valueArr = value.split(',');

					// first Chart

					var ctx = document.getElementById('myChart1').getContext(
							'2d');
					var myChart = new Chart(ctx, {
						type : 'bar',
						data : {
							labels : dateArr,
							datasets : [ {
								label : '# of Dates',
								data : valueArr,
								backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
										'rgba(54, 162, 235, 0.2)',
										'rgba(255, 206, 86, 0.2)',
										'rgba(75, 192, 192, 0.2)',
										'rgba(153, 102, 255, 0.2)',
										'rgba(255, 159, 64, 0.2)' ],
								borderColor : [ 'rgba(255, 99, 132, 1)',
										'rgba(54, 162, 235, 1)',
										'rgba(255, 206, 86, 1)',
										'rgba(75, 192, 192, 1)',
										'rgba(153, 102, 255, 1)',
										'rgba(255, 159, 64, 1)' ],
								borderWidth : 1
							} ]
						},
						options : {
							scales : {
								yAxes : [ {
									ticks : {
										beginAtZero : true
									}
								} ]
							}
						}
					});

					// first Chart ends

					// Second chart start

					var ctx1 = document.getElementById('myChart2').getContext(
							'2d');
					var stackedLine = new Chart(ctx1, {
						type : 'line',
						data : {
							labels : dateArr,
							datasets : [ {
								label : '# Dates',
								data : valueArr,
								backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
										'rgba(54, 162, 235, 0.2)',
										'rgba(255, 206, 86, 0.2)',
										'rgba(75, 192, 192, 0.2)',
										'rgba(153, 102, 255, 0.2)',
										'rgba(255, 159, 64, 0.2)' ],
								borderColor : [ 'rgba(255, 99, 132, 1)',
										'rgba(54, 162, 235, 1)',
										'rgba(255, 206, 86, 1)',
										'rgba(75, 192, 192, 1)',
										'rgba(153, 102, 255, 1)',
										'rgba(255, 159, 64, 1)' ],
								borderWidth : 1
							} ]
						},
						options : {
							scales : {
								yAxes : [ {
									stacked : true
								} ]
							}
						}
					});

					// Second chart end

					// Third chart start

					var division = $('#division').val();
					var divisionValue = $('#divisionValue').val();
					var divisionArr = division.split(',');
					var divisionValueArr = divisionValue.split(',');

					var data = {
						datasets : [ {
							data : divisionValueArr,
							backgroundColor : [ "#FF6384", "#4BC0C0",
									"#FFCE56", "#E7E9ED", "#36A2EB" ],
							label : 'My dataset' // for legend
						} ],
						labels : divisionArr
					};
					var ctx2 = document.getElementById('myChart3').getContext(
							'2d');
					new Chart(ctx2, {
						data : data,
						type : 'polarArea'
					});

					// Third chart end

				}

		);
	</script>
<%@include file="fragments/footer.jsp"%>