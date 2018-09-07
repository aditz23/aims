<html>
<?php
$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"movies");
$username=$_GET["username"];
$password=$_GET["password"];
switch($_REQUEST['button'])
{
case 'Login':
$val=mysqli_query($con,"select * from admin where username='$username' and password='$password'");
$count=mysqli_num_rows($val);
if($count==1)
{
	include('afteradminlogin.html');
}

else
{
	include('invalidadmin.html');
}
break;
}
?>
</html>
</html>