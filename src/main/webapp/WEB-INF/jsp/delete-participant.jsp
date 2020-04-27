<!DOCTYPE HTML>
<html lang="en">
<head>
<title>TMS - Delete Participant</title>
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
		<p class="shadow-red">Note:- You can only delete those
			participants which are registered by you only!</p>
		<h3 class="shadow-red" align="center">${errorMessage}</h3>
		<h3 class="shadow-red" align="center">${successMessage}</h3>
		<h3 class="shadow-red" align="center">${emptyMessage}</h3>
	</div>
	<hr color="#fc3955">
	<div class=" w3l-login-form" id="checkParticipant">
		<h3 class="shadow-red-nou">Delete Participant Here</h3>
		<form name="registerForm" method="POST" onsubmit="return validate()">
			<div class=" w3l-form-group">
				<label>Participant's Name:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="text" class="form-control"
						placeholder="Full Name" name="sname" required="required" />
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
			<button type="submit" id="submit" name="submit" class="hover-red">Delete
				Participant</button>
			<br> <br> <input type="reset" value="Reset"
				class="hover-green" />
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
			var empErr = "${emptyMessage}";
			if (err != "") {
				alert(err);
			}
			if (succ != "") {
				alert(succ);
				window.location.pathname = '/';
			}
			if (empErr != "") {
				alert(empErr);
			}
		}
		function validate() {
			var mob=document.forms["registerForm"]["mobile"].value;
			if(mob.length!=10){
				alert("Mobile number should be of 10 digits!");
				return false;
			}
			var del = confirm("Do you really want to delete the selected participant ?");
			if (del == true) {
				return true;
			} else {
				return false;
			}
		}
	</script>
</body>
</html>