<?php
$pdo = require "config.php";

$id = $_GET['id'];

$sql = "SELECT * FROM plannedgames WHERE id=$id";
$result = $conn->query($sql);
$results = $result->fetch(PDO::FETCH_ASSOC);
$tijd = $results['time'];
$gameid = $results['gameid'];

$sql = "SELECT * FROM games WHERE id=$gameid";
$result = $conn->query($sql);
$results = $result->fetch(PDO::FETCH_ASSOC);
$image = $results['image'];
$description = $results['description'];
$name = $results['name'];

$users = array();
$sql = "SELECT * FROM plannedusers WHERE plannedgameid=$id";
foreach($conn->query($sql) as $row) {
    $userid = $row['userid'];
    $sql = "SELECT * FROM users WHERE id=$userid";
    foreach($conn->query($sql) as $row) {
        $users[]= $row['name'];
    }
}

$sql = "SELECT * FROM plannedusers WHERE plannedgameid = $id AND is_host = 1";
$result = $conn->query($sql);
$results = $result->fetch(PDO::FETCH_ASSOC);
$userid = $results['userid'];

$sql = "SELECT * FROM users WHERE id=$id";
$result = $conn->query($sql);
$results = $result->fetch(PDO::FETCH_ASSOC);
$host = $row['name'];?>

<html>
<head>

</head>
<body>
    <img src="afbeeldingen/<?=$image?>">
    <h1><?=$name?></h1>
    <p><?=$description?></p>
    <h1>Tijd</h1>
    <p><?=$tijd?></p>
    <h1>Players</h1> 
    <?php 
    foreach($users as $user) {?>
        <p><?=$user?></p>
    <?php } ?>
    <h1>Host</h1>
    <p><?=$host?></p>
</body>
</html>
