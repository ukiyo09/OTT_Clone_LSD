<?php
ob_start(); //Turns on output buffering, stores output
session_start(); //

date_default_timezone_set("Asia/Kolkata");

try {
    $con = new PDO("mysql:dbname=ottclone;host=localhost", "root", "");
    //set PDO error mode to exception
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}
catch (PDOException $e) {
    exit("Connection failed: " . $e->getMessage());
}
?>
