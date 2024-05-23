<?php
require_once("includes\header.php");

$preview = new PreviewProvider($con, $userLoggedIn);
echo $preview->createTVShowPreview(null);

$containers = new CategoryContainers($con, $userLoggedIn);
echo $containers->showTVShowCategories();
?>