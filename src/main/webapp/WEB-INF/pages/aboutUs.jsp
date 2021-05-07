<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- custome CSS -->
<link rel="stylesheet" type="text/css" href="styles/aboutUs.css" />
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
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>Home Page</title>
</head>
<body>
	<div class="page">

		<!-- Navbar -->
		<jsp:include page="header.jsp" />
		<!-- End navbar -->


		<div class="content">

			<div class="card aboutUsCard">
				<div class="card-body">

					<div class="about-section paddingTB60 gray-bg">
						<div class="container">
							<div class="row">
								<div class="col-md-7 col-sm-6">
									<div class="about-title clearfix">
										<h1>
											About <span>GestionRH</span>
										</h1>
										<h3>Lorem ipsum dolor sit amet</h3>
										<p class="about-paddingB">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Donec aliquet dolor libero, eget
											venenatis mauris finibus dictum. Vestibulum quis elit eget
											neque porttitor congue non sit amet dolor. Proin pretium
											purus a lorem ornare</p>
										<p>sed lobortis pulvinar. Integer laoreet mi id eros porta
											euismod. Suspendisse potenti. Nulla eros mauris, convallis et
											sem tempus, viverra hendrerit sapien</p>

									</div>
								</div>
								<div class="col-md-5 col-sm-6">
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
