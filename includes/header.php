<?php
require_once("includes\config.php");
require_once("includes\classes\PreviewProvider.php");
require_once("includes\classes\CategoryContainers.php");
require_once("includes\classes\Entity.php");
require_once("includes\classes\EntityProvider.php");
require_once("includes\classes\ErrorMessage.php");
require_once("includes\classes\SeasonProvider.php");
require_once("includes\classes\Season.php");
require_once("includes\classes\Video.php");
require_once("includes\classes\SearchResultsProvider.php");


if(!isset($_SESSION["userLoggedIn"])) {
    header("Location: register.php");
}

$userLoggedIn = $_SESSION["userLoggedIn"];
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to LSD</title>
        <link rel="stylesheet" type="text/css" href="assets/style/style.css" />
        <link rel="icon" href="assets\images\lsdlogo.png" type="image/ico" />
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/94051f342c.js" crossorigin="anonymous"></script>
        <script src="assets\js\script.js"></script>
    </head>
    <body>
        <div class='wrapper'>

<?php
if(!isset($hideNav)) {
    include_once("includes\NavBar.php");
}
?>