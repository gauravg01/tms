<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<title>TMS - Bout Maker</title>
</head>
<body>
	<div>
		<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
	</div>
	<br>
	<div align="center">
		<p class="shadow-red-nou">Hello ${name} !</p>
	</div>
	<hr color="#fc3955">
	<div class=" w3l-login-form" id="boutMaker">
		<h3 class="shadow-red-nou">Enter criteria for making bout</h3>
		<form method="POST">
			<div class=" w3l-form-group">
				<label>Age criteria:</label><label>Min Age:</label> <select
					class="form-control" name="minAge" required="required" id="minAge">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18/+</option>
				</select> <label>Max Age:</label> <select class="form-control" name="maxAge"
					required="required" id="maxAge">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18/+</option>
				</select>
			</div>
			<div class=" w3l-form-group">
				<label>Belt Criteria:</label>
				<div class="group">
					<i class="fas fa-tag"></i> <select class="form-control" name="belt"
						required="required">
						<option value="all">All</option>
						<option value="white">White</option>
						<option value="color">Color</option>
						<option value="black">Black</option>
					</select>
				</div>
			</div>
			<div class=" w3l-form-group">
				<label>Gender:</label>
				<div class="group">
					<i class="fas fa-user"></i> <input type="radio"
						class="form-control" name="gender" value="M" required /> <label
						style="color: black">Male</label> <input type="radio"
						class="form-control" name="gender" value="F" /> <label
						style="color: black">Female</label>
				</div>
			</div>
			<button type="submit" id="submit" name="submit">Make Bout</button>
			<br> <br> <input type="reset" value="Reset" />
		</form>
	</div>
	<div id="listParticipant">
		<div class="container" style="background-color: #f2f2f2">
			<p class="shadow-red-nou">Total no of participants in selected
				criteria : ${total}</p>
			<div style="overflow-x: auto;">
				<table class="table table-striped">
					<caption>Here is the bout for selected criteria</caption>
					<thead>
						<tr>
							<th id="name">Name</th>
							<th id="age">Age</th>
							<th id="height">Height</th>
							<th id="weight">Weight</th>
							<th id="belt">Belt</th>
							<th id="gender">Gender</th>
							<th id="dojoName">Dojo Name</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${participant}" var="part">
							<tr>
								<td>${part.sname}</td>
								<td>${part.age}</td>
								<td><mark>${part.height}</mark></td>
								<td><mark>${part.weight}</mark></td>
								<td>${part.belt}</td>
								<td>${part.gender}</td>
								<td>${part.dojoName}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<div align="center">
			<div style="width: 15%">
				<a href="/bout"><button>
						<i class="fas fa-arrow-circle-left"></i> &nbsp;Back
					</button></a>
			</div>
		</div>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<div>
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
	</div>
	<script>
		window.onload = function() {
			document.getElementById("listParticipant").style.display = "none";
			var list = "${participant}";
			var err = "${errorMessage}";
			if (list != "") {
				document.getElementById("boutMaker").style.display = "none";
				document.getElementById("listParticipant").style.display = "block";
			}
			if (err != "") {
				alert(err);
				window.location.pathname = '/bout';
			}
		}
	</script>
</body>
</html>