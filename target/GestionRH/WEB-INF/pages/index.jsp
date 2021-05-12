<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- custome CSS -->
<link rel="stylesheet" type="text/css" href="styles/index.css" />
<script type="javascript" src="js/manager.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link
	href="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.css"
	rel="stylesheet">
<title>Home Page</title>
</head>
<body>
	<div class="page">

		<!-- Navbar -->
		<jsp:include page="header.jsp" />
		<!-- End navbar -->
		<div class="content">

			<!-- 		WELCOME CARD -->
			<div class="row">
				<div class="card homePageCard col-12 col-lg-6">
					<div class="card-body">

						<div class="about-section paddingTB60 gray-bg">
							<div class="container">
								<div class="row">
									<div class="col-md-7 col-sm-6 col-lg-12">
										<div class="about-title clearfix">
											<h1>
												<spring:message code="index.welcome" /> <span>GestionRH</span>
											</h1>
											<h3>Lorem ipsum dolor sit amet</h3>
											<p class="about-paddingB">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Donec aliquet dolor libero,
												eget venenatis mauris finibus dictum. Vestibulum quis elit
												eget neque porttitor congue non sit amet dolor. Proin
												pretium purus a lorem ornare</p>
											<p>sed lobortis pulvinar. Integer laoreet mi id eros
												porta euismod. Suspendisse potenti. Nulla eros mauris,
												convallis et sem tempus, viverra hendrerit sapien</p>

										</div>
									</div>
									<div class="col-md-5 col-sm-6 col-lg-12">
										<div class="about-img">
											<img
												src="https://devitems.com/preview/appmom/img/mobile/2.png"
												alt="">
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
				<div class="card card-coffe col-12 col-lg-3">
					<div class="card-body">
					
							<div class="coffee-header">
								<div class="coffee-header__buttons coffee-header__button-one"></div>
								<div class="coffee-header__buttons coffee-header__button-two"></div>
								<div class="coffee-header__display"></div>
								<div class="coffee-header__details"></div>
							</div>
							<div class="coffee-medium">
								<div class="coffe-medium__exit"></div>
								<div class="coffee-medium__arm"></div>
								<div class="coffee-medium__liquid"></div>
								<div class="coffee-medium__smoke coffee-medium__smoke-one"></div>
								<div class="coffee-medium__smoke coffee-medium__smoke-two"></div>
								<div class="coffee-medium__smoke coffee-medium__smoke-three"></div>
								<div class="coffee-medium__smoke coffee-medium__smoke-for"></div>
								<div class="coffee-medium__cup"></div>
							</div>
							<div class="coffee-footer"></div>
						</div>
			
				</div>
			</div>
			<!-- 		END WELCOME CAR -->

			<!-- Button trigger modal -->


			<!-- Modal -->
			<div class="modal fade" id="loginBackdrop" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="loginBackdrop" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">Login</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp">
									<div id="emailHelp" class="form-text">We'll never share
										your email with anyone else.</div>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control"
										id="exampleInputPassword1">
								</div>
								<div class="mb-3 form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>
								<a class="btn btn-primary" href="managerList" type="submit "
									role="button">Login</a>
							</form>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!-- Navbar -->
		<jsp:include page="footer.jsp" />
		<!-- End navbar -->

	</div>
	<!-- end page -->

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.16.0/dist/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>
	<script
		src="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.js"></script>


	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    -->
</body>
</html>
