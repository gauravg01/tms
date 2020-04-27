<!DOCTYPE HTML>
<html lang="en">
<head>
<title>TMS - Register Participants</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/fontawesome-all.css" rel="stylesheet" />
<link
	href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
</head>

<body>
	<div>
		<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
	</div>
	<br>
	<div align="center">
		<p class="shadow-red-nou">Hello ${name} !</p>
		<h3 class="shadow-red" align="center">${errorMessage}</h3>
		<h3 class="shadow-red" align="center">${successMessage}</h3>
		<h3 class="shadow-red" align="center">${duplicateMessage}</h3>
	</div>
	<hr color="#fc3955">
	<div class=" w3l-login-form">
		<h3 class="shadow-red-nou">Register Participant Here</h3>
		<form method="POST">
			<div class=" w3l-form-group">
				<label>Participant's Name:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="text" class="form-control"
						placeholder="Full Name" name="sname" required="required" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Participant's Age:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="number"
						class="form-control" placeholder="Age" name="age"
						required="required" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Participant's Height:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="number"
						class="form-control" placeholder="Height in cms" name="height"
						required="required" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Participant's Weight:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="number"
						class="form-control" placeholder="Weight in KG" name="weight"
						required="required" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Participant's Gender:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="radio"
						class="form-control" name="gender" value="M" required /> <label
						style="color: black">Male</label> <input type="radio"
						class="form-control" name="gender" value="F" /> <label
						style="color: black">Female</label>
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Belt:</label>
				<div class="group">
					<i class="fas fa-tag"></i> <select class="form-control" name="belt"
						required="required">
						<option value="white">White</option>
						<option value="color">Color</option>
						<option value="black">Black</option>
					</select>
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Dojo Name:</label>
				<div class="group">
					<i class="fas fa-home"></i> <input type="text" class="form-control"
						placeholder="Dojo Name" name="dojoName" required="required"
						value="${dojoName}" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Sensei Name:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="text" class="form-control"
						placeholder="Sensei Name" name="senseiName" required="required"
						value="${senseiName}" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Emergency Contact Number:</label>
				<div class="group">
					<i class="fas fa-phone-square"></i> <input type="number"
						class="form-control" maxlength="10"
						placeholder="10 digit mobile number" name="mobile"
						required="required" />
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Tournament Name:</label>
				<div class="group">
					<i class="fas fa-tag"></i> <select class="form-control" name="tournamentName"
						required="required">
						<option value="Test Tournament">Test Tournament</option>
					</select>
				</div>
			</div>
			<button type="submit" id="submit" name="submit" class="hover-green">Register</button>
			<br> <br> <input type="reset" value="Reset" class="hover-red"/>
		</form>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<div>
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
	</div>
	<script>
		window.onload = function() {
			var err = "${errorMessage}";
			var succ = "${successMessage}";
			var dubErr = "${duplicateMessage}";
			if (err != "") {
				alert(err);
			}
			if (succ != "") {
				alert(succ);
			}
			if (dubErr != "") {
				alert(dubErr);
				window.location.pathname = '/update-participant';
			}
		}
	</script>
</body>
</html>