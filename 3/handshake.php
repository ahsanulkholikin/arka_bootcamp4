<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Arkademi </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body>

<form  method="post">
    <p>Masukan Orang yang hadir:</p>
    <input type="number"  name="total">
    <input type="submit" name="submit" value="submit">
</form>

<?php
error_reporting(0);
$total_people = $_POST["total"];
function count_handshake($total_people) {
    $handshake = ($total_people * ($total_people - 1)) / 2;
    echo "Jumlah Jabat Tangan Yang Terjadi " . $handshake;
};
count_handshake($total_people);
?>
</body>
</html>