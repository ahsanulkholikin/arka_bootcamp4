<html>
<head>
<title>Arkademi</title>
</head>
<body>

<fieldset>
<form method="POST">
<label>Username :</label>
<input type="text" name="username">
<br>
<label>Email : </label>
<input type="email" name="email">
<br>
<label>Phone Number :</label>
<input type="Number" name="phoneNumber">
<br>
<input type="submit" name="submit" value="SUBMIT">
</form>
</fieldset>

<br>


<?php
if(isset($_POST['submit'])){
  if(ctype_lower($_POST['username'])){
    echo "Valid Username<br>";
  }else{
    echo "<script>alert('Username Must Be Lower');</script>";
  }
  if(preg_match("/^([a-z0-9\+\-]+)(\.[a-z0-9\+\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $_POST['email'])) {
    echo 'Valid Email<br>';
  } else {
    echo "<script>alert('Invalid Email');</script>";
  }
  if (preg_match("/^[\+0-9\-\(\)\s]*$/", $_POST['phoneNumber'])) {
    echo "Valid Phone Number<br>";
  }else{
    echo "<script>alert('Invalid Phone Number');</script>";
  }
}else{
  echo "isi terlebih dahulu";
}
?>

</body>
</html>