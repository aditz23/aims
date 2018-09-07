
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
.bgimg-1 {
    background-position: center;
    background-size: cover;
    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 16px;}
body { 
 background: url('http://wallpapersdsc.net/wp-content/uploads/2015/10/Deadpool_movie_55.jpg') no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
}

.panel-default {
 opacity: 0.9;
 margin-top:30px;
}
.form-group.last {
 margin-bottom:0px;
}
</style>







<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="http://localhost/moviehome.html" class="w3-bar-item w3-button w3-wide" ><i class="fa fa-caret-square-o-left"></i>PERSONALISED MOVIE DATABASE SYSTEM</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">

      <a href="http://localhost/moviehome.html" class="w3-bar-item w3-button"><i class="fa fa-user"></i> LOGOUT</a>

    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="http://localhost/moviehome.html" onclick="w3_close()" class="w3-bar-item w3-button">LOGOUT</a>
</nav>





<body>

<div style="padding-top: 300px;" style="background:transparent;">
<h1 style="text-color:white;font-size:200%;"><strong>VIEW OF MOVIE DETAILS TABLE</strong></h1>
    <div class="row">


        <div class="col-md-4 col-md-offset-4">
            <div class="container">
                <div class="panel-body" style="background:transparent;padding-right:800px;">
                   



<?php
$db_host = 'localhost'; 
$db_user = 'root'; 
$db_pass = ''; 
$db_name = 'movies'; 

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());	
}

$sql = 'SELECT * FROM movie_details';
		
$query = mysqli_query($conn, $sql);

if (!$query) {
	die ('SQL Error: ' . mysqli_error($conn));
}
?>

<table class="data-table">
		<thead>
			<tr>
				<th>movie_title</th>
				<th>director_name</th>
				<th>actor_name1</th>
				<th>genre</th>
			</tr>
		</thead>
		<tbody>
		<?php
		$no 	= 1;
		while ($row = mysqli_fetch_array($query))
		{
			$genre = $row['genre'] == 0 ? '' : number_format($row['genre']);
			echo '<tr>
					<td>'.$row['movie_title'].'</td>
					<td>'.$row['director_name'].'</td>
					<td>'.$row['actor_name1'].'</td>
					<td>'.$row['genre'].'</td>
				</tr>';

			$no++;}
		?>
		</tbody>
		<tfoot>
			<tr>
			</tr>
		</tfoot>
	</table>
<div style="padding-top:10px;">
<a href="http://localhost/moviehome.html" class="btn btn-info alert alert-danger" role="button" >Logout</a>
</div>


                    </div>        
        </div>
        </div>
    </div>
</div>
</body>

	<style type="text/css">
		body {
			font-size: 15px;
			color: #343d44;
			font-family: "segoe-ui", "open-sans", tahoma, arial;
			padding: 0;

		}
		table {
			margin: auto;
			font-family: "Lucida Sans Unicode", "Lucida Grande", "Segoe Ui";
			font-size: 12px;width:80%;

		}

		h1 {
			margin: 25px auto 0;
			text-align: center;
			text-transform: uppercase;
			font-size: 17px;width:50%;
		}

		
		/* Table */
		.data-table {
			border-collapse: collapse;
			font-size: 14px;width:50%;
	}

		.data-table th, 
		.data-table td {
			border: 1px solid #e1edff;
			padding: 7px 13px;width:50%;

	}

		/* Table Header */
		.data-table thead th {
			background-color: #508abb;
			color: #FFFFFF;
			border-color: #6ea1cc;
width:50%;
			text-transform: uppercase;
		}

		/* Table Body */
		.data-table tbody td {
			color: #FFFFFF;

		}


	</style>















<style>
.styled { 
border-collapse: collapse;
border-radius:20px;
border-spacing: 5px;
font-family: Arial, Helvetica, sans-serif;
font-size: 20px;
    padding: 15px;
padding-left: 80px;
 }
.head
{
color: white;
background-color: #A52A2A;
font-family: Arial, Helvetica, sans-serif;
text-align: left;
font-size: 15px;
padding: 10px;
}
.ele
{
font-family: Arial, Helvetica, sans-serif;
text-align: left;
font-size: 15px;
padding: 10px;
}
</style>














</body>
</html>
