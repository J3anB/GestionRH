<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

			<div class="card card-manager">
				<div class="card-body">
					<div class="input-group mb-3">
						<h3>
							<span>Manager </span>List
						</h3>
					</div>
					<!-- Manager Table -->
					<table class="table table-striped table-bordered table-hover"
						data-toggle="table" id="table" class="" data-detail-view=""
						data-pagination="true" data-pagination-pre-text="< Previous"
						data-pagination-next-text="Next >"
						data-classes="table table-hover table-condensed">
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
							<!--  main table 1-->
							<tr data-toggle="collapse" id="row1" data-target=".row1">
								<th scope="row">2</th>
								<td>Alice</td>
								<td>Cooper</td>
								<td>Treasurer</td>
								<td>Mark Otto</td>
							</tr>
							<!-- end main table 1 -->
							<!-- subtable 1 -->
							<tr class="tabularinfo__subblock collapse row1">
								<td colspan="12">
									<table class="table table-striped  table-bordered table-hover">
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
											<tr class="collapse row1">
												<th scope="row">6</th>
												<td>Janis</td>
												<td>Joplin</td>
												<td>Treasurer</td>
												<td>Mark Otto</td>
											</tr>
											<tr class="collapse row1">
												<th scope="row">6</th>
												<td>Janis</td>
												<td>Joplin</td>
												<td>Treasurer</td>
												<td>Mark Otto</td>
											</tr>
											<tr class="collapse row1">
												<th scope="row">6</th>
												<td>Janis</td>
												<td>Joplin</td>
												<td>Treasurer</td>
												<td>Mark Otto</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- end subtable 1 -->


							<!--  main table 2-->
							<tr data-toggle="collapse" id="row2" data-target=".row2">
								<th scope="row">2</th>
								<td>Alice</td>
								<td>Cooper</td>
								<td>Treasurer</td>
								<td>Mark Otto</td>
							</tr>
							<!-- end main table 1 -->
							<!-- subtable 1 -->
							<tr class="tabularinfo__subblock collapse row2">
								<td colspan="12">
									<table class="table table-striped table-bordered table-hover">
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
											<tr class="collapse row2">
												<th scope="row">6</th>
												<td>Janis</td>
												<td>Joplin</td>
												<td>Treasurer</td>
												<td>Mark Otto</td>
											</tr>
											<tr class="collapse row2">
												<th scope="row">6</th>
												<td>Janis</td>
												<td>Joplin</td>
												<td>Treasurer</td>
												<td>Mark Otto</td>
											</tr>
											<tr class="collapse row2">
												<th scope="row">6</th>
												<td>Janis</td>
												<td>Joplin</td>
												<td>Treasurer</td>
												<td>Mark Otto</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- end subtable 1 -->

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
