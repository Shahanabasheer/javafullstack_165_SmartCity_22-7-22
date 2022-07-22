
<!DOCTYPE html>
<html>
<head>
<!-- Load Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous">
	
</script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
	integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
	crossorigin="anonymous">
	
</script>

<link rel="stylesheet" href="Admin_home_styles.css">
<style type="text/css">
#admininbox h3 {
	line-height: 60px;
	font-size: 40px;
	font-family: serif;
	margin: 0;
	margin-left: 15px;
	color: #008080;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#adminInbox_d1 button {
	margin-left: 25px;
	font-size: 15px;
	font-weight: bold;
	width: 150px;
	display: inline-block;
}

#logoutbar {
	position: relative;
	right: 10px;
	display: inline-block;
}

#logoutbar a {
	display: inline-block;
	font-family: serif;
	font-size: 20px;
	color: white;
	font-weight: bold;
}

#logoutbar a:hover {
	background-color: #008080;
}

#adminInbox_d2 {
	font-size: 15px;
	position: relative;
	height: 300px;
	width: 100px;
	display: inline-block;
	margin-left: 20px;
}

.header {
	font-size: 20px;
	font-weight: bold;
	color: #008080;
	margin-left: 25px;
}

#adminInbox_d3 {
	display: inline-block;
	margin-left: 10px;
	position: absolute;;
	height: 300px;
}

#adminInbox_d3 button {
	margin-left: 25px;
	margin-bottom: 10px;
}

#table_inbox {
	border-collapse: collapse;
	margin-left: 25px;
	font-size: 15px;;
	font-family: sans-serif;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	position: relative;
}

#table_inbox tr th {
	background-color: #008080;
	color: white;
	text-align: left;
}

#table_inbox th, #table_inbox td {
	padding: 12px 15px;
}

#table_inbox tbody tr {
	border-bottom: 1px solid #dddddd;
}

#table_inbox tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

#table_inbox tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}

#adminInbox_d4 {
	position: relative;
	margin-left: 25px;
	margin-bottom: 50px;
}

#modalCompose {
	left: 20%;
	width: 800px;
}

.modal-header-info {
	color: #fff;
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
	background-color: #5bc0de;
}
</style>
</head>
<body id="body_adminInbox">
	<div class="admin_home_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="admin_inbox" id="admininbox">

		<h3>Inbox</h3>
		<div id="adminInbox_d1">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#modalCompose">New Message</button>
			<ul class=" nav nav-pills navbar-right" id="logoutbar">
				<li class="nav-item"><a href="#">Logout</a></li>
			</ul>
		</div>
		<hr>
		<div id="adminInbox_d2">
			<ul class="nav nav-pills flex-column">
				<li class="header">Folders</li>
				<li class="active"><a href="#"> Education(14)</a></li>
				<li><a href="#">Employment</a></li>
				<li><a href="#">Health</a></li>
				<li><a href="#"> Sent</a></li>
				<li><a href="#"> Drafts</a></li>

			</ul>
		</div>
		<div id="adminInbox_d3">
			<button type="button" class="btn btn-danger">
				<i class="bi bi-trash text-light"></i> Delete
			</button>
			<table id="table_inbox">
				<tr>
					<th></th>
					<th>Name</th>
					<th>Email</th>
					<th>Main Category</th>
					<th>Sub category</th>
					<th>Name of sub category</th>
					<th>Message</th>

				</tr>
				<tr>
					<td><input type="checkbox" name="markMsg" id="markMsg"></td>
					<td><a href="#">Aydin</a></td>
					<td><a href="#">aydin@2015</a></td>
					<td>Education</td>
					<td>School</td>
					<td>Bhavans Vidya Mandir</td>
					<td>Sir, is there any vaccancy in second standard</td>
				</tr>

			</table>
		</div>
		<div id="adminInbox_d4">
			<ul class="pagination">
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>

			</ul>
		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="modalCompose">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header modal-header-info">
					<h5 class="modal-title">
						<span class="glyphicon glyphicon-envelope"></span> Compose Message
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"> </span>×
					</button>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2" for="inputTo"><span
								class="glyphicon glyphicon-user"></span>To</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="inputTo"
									placeholder="comma separated list of recipients">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="inputSubject"><span
								class="glyphicon glyphicon-list-alt"></span>Subject</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputSubject"
									placeholder="subject">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-12" for="inputBody"><span
								class="glyphicon glyphicon-list"></span>Message</label>
							<div class="col-sm-12">
								<textarea class="form-control" id="inputBody" rows="8"></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-warning">Save Draft</button>
					<button type="button" class="btn btn-primary ">
						Send <i class="fa fa-arrow-circle-right fa-lg"></i>
					</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>