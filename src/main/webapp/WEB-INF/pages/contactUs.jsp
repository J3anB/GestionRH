<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- custome CSS -->
<link rel="stylesheet" type="text/css" href="styles/contactUs.css" />
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
<title>Contactez Nous</title>
</head>
<body>
	<div class="page">

		<!-- Navbar -->
		<jsp:include page="header.jsp" />
		<!-- End navbar -->
		<div class="content">

			<!-- 			contactus Card -->
			<div class="card contactUsCard">
				<div class="card-body">
					<!-- Contact Us Section -->

					<section
						class="Material-contact-section section-padding section-dark">
						<div class="container">
							<div class="row">
								<!-- Section Titile -->
								<div class="col-md-12 wow animated fadeInLeft"
									data-wow-delay=".2s">
									<h1 class="section-title">Nous aimerions avoir de vos avis</h1>
								</div>
							</div>
							<div class="row">
								<!-- Section Titile -->
								<div
									class="col-md-6 mt-3 contact-widget-section2 wow animated fadeInLeft"
									data-wow-delay=".2s">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Donec aliquet dolor libero, eget venenatis mauris finibus
										dictum. Vestibulum quis elit eget neque porttitor congue non
										sit amet dolor. Proin pretium purus a lorem ornare</p>

									<div class="find-widget">
										Company: <a href="#">GestionRH</a>
									</div>
									<div class="find-widget">
										Adresse: <a href="#">Lille, France</a>
									</div>
									<div class="find-widget">
										telephone: <a href="#">+ 879-890-9767</a>
									</div>

									<div class="find-widget">
										Website: <a href="#">grstionrh.com</a>
									</div>
								</div>
								<!-- contact form -->
								<div class="col-md-6 wow animated fadeInRight"
									data-wow-delay=".2s">
									<form class="shake" role="form" method="post" id="contactForm"
										name="contact-form" data-toggle="validator">
										<!-- Name -->
										<div class="form-group label-floating">
											<label class="control-label" for="name">Nom</label> <input
												class="form-control" id="name" type="text" name="name"
												required data-error="Please enter your name">
											<div class="help-block with-errors"></div>
										</div>
										<!-- email -->
										<div class="form-group label-floating">
											<label class="control-label" for="email">Email</label> <input
												class="form-control" id="email" type="email" name="email"
												required data-error="Please enter your Email">
											<div class="help-block with-errors"></div>
										</div>
										<!-- Subject -->
										<div class="form-group label-floating">
											<label class="control-label">Sujet</label> <input
												class="form-control" id="msg_subject" type="text"
												name="subject" required
												data-error="Please enter your message subject">
											<div class="help-block with-errors"></div>
										</div>
										<!-- Message -->
										<div class="form-group label-floating">
											<label for="message" class="control-label">Message</label>
											<textarea class="form-control" rows="3" id="message"
												name="message" required data-error="Write your message"></textarea>
											<div class="help-block with-errors"></div>
										</div>
										<!-- Form Submit -->
										<div class="form-submit mt-5">
											<button class="btn btn-outline-seconday" type="submit"
												id="form-submit">Envoyer</button>
											<div id="msgSubmit" class="h3 text-center hidden"></div>
											<div class="clearfix"></div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</section>
					<!-- 		END CONTACT US CARD -->

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
