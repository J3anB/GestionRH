<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>


<!-- custome CSS -->
<link rel="stylesheet" type="text/css" href="styles/addEmployee.css" />
<script type="javascript" src="js/manager.js"></script>

<!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
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
<title>Ajouter Employee</title>
</head>
<body>
	<div class="page">
		<!-- Navbar -->
		<jsp:include page="header.jsp" />
		<!-- End navbar -->


		<div class="content">



			<!-- Manager table Card -->
			<h3>Ajouter Employee</h3>
			<div class="card cardAddEmployee col-12 col-lg-6">
				<div class="card-body">
					<form action="">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">First
								Name</span> <input type="text" class="form-control"
								placeholder="Prenom" aria-label="Prenom"
								aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Last Name</span>
							<input type="text" class="form-control"
								placeholder="Nom de famille" aria-label="Nom de famille"
								aria-describedby="basic-addon1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">Titre</span> <input
								type="text" class="form-control" placeholder="Titre"
								aria-label="Titre" aria-describedby="basic-addon1">
						</div>
						<div class="form-group">
							<!-- Date input -->
							<label class="control-label" type="date" for="date">Date de debut</label> <input
								class="form-control" id="date" name="date"
								placeholder="MM/DD/YYY" type="text" />
						</div>
						<div class="input-group mb-3">
							<select class="form-select" aria-label="Default select example">
								<option selected>Selectionner Manager</option>
								<option value="1">Marco Polo</option>
								<option value="2">Alice Cooper</option>
								<option value="3">Janis Joplin</option>
							</select>
						</div>
						<a class="btn btn-outline-primary" type="submit"
							href="employeeList" role="button">Valider</a>
					</form>
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

							<script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>

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
