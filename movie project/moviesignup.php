<html>
<?php
$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"movies");
$email=$_GET["email"];
$username=$_GET["username"];
$phonenumber=$_GET["phonenumber"];
$password=$_GET["password"];
$val=mysqli_query($con,"select * from login where email='$email' and username='$username'");
$count=mysqli_num_rows($val);
if($_REQUEST['button']=='Signin')
{
if($count==1)
{
	
include('useralready.html');		

}
else
{
	mysqli_query($con,"insert into login values('$email','$username','$phonenumber','$password')");
	include('moviehome.html');
}

}
mysqli_close($con);
?>
</html>