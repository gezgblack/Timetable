<?php

$user = 'root';
$pass = '123qwe';
$db = 'testdb';

$db = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

echo"Connected to Database!!";
?>