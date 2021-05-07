<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- custome CSS -->
<link rel="stylesheet" type="text/css" href="styles/manager.css" />
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
<title>Managers List</title>
</head>
<body>
	<div class="page">
		<!-- Navbar -->
	<jsp:include page="header.jsp" />  
		<!-- End navbar -->


		<div class="content">



			<!-- Manager table Card -->
			<h3>Managers List</h3>
			<div class="card card-manager">
				<div class="card-body">

					<!-- Manager Table -->
					<table class="table table-striped table-hover" id="table"
						data-toggle="table" data-toolbar="#toolbar"
						data-filter-control="true" data-show-footer="false"
						data-detail-formatter="detailFormatter" data-detail-view="true"
						data-hide-unused-select-options="true">
						<thead>
							<tr>
								<th data-field="id">ID</th>
								<th data-field="firstName" scope="col">First name</th>
								<th data-field="lastName" scope="col">Last Name</th>
								<th data-field="title" scope="col">Title</th>
								<th data-field="manager" scope="col">Manager</th>
							</tr>
						</thead>
						<tbody>
<!-- 							<tr> -->
<!-- 								<th><a class="nav-link" aria-current="page" -->
<!-- 									href="managedEmployee">1</a></th> -->
<!-- 								<td><a class="nav-link" aria-current="page" -->
<!-- 									href="managedEmployee">Mark</a></td> -->
<!-- 								<td><a class="nav-link" aria-current="page" -->
<!-- 									href="managedEmployee">Otto</a></td> -->
<!-- 								<td><a class="nav-link" aria-current="page" -->
<!-- 									href="managedEmployee">Vice president</a></td> -->
<!-- 								<td>/</td> -->
<!-- 							</tr> -->
							<tr>
								<th scope="row"><a class="nav-link" aria-current="page"
									href="managedEmployee">2</a></th>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Alice</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Cooper</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Treasurer</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Mark Otto</a></td>
							</tr>
							<tr>
								<th scope="row"><a class="nav-link" aria-current="page"
									href="managedEmployee">3</a></th>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Janis</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Joplin</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Operation Manager</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Mark Otto</a></td>
							</tr>
							<tr>
								<th scope="row"><a class="nav-link" aria-current="page"
									href="managedEmployee">4</a></th>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Jimmy</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Hendrix</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Loan Manager</a></td>
								<td><a class="nav-link" aria-current="page"
									href="managedEmployee">Janis Joplin</a></td>
							</tr>
						</tbody>
					</table>
					<!-- End manager Table -->

				</div>
			</div>
			<!-- end Manager table card -->

		</div>
		<!-- end Container -->

		<!-- footer -->
	<jsp:include page="footer.jsp" />  
		<!-- End footer -->
		

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
