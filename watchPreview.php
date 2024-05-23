<?php
$hideNav = true;
require_once("includes\header.php");

if(!isset($_GET["id"])) {
    ErrorMessage::show("No ID passed into page");
}

$preview = new Entity($con, $_GET["id"]);
?>
<div class="watchContainer">

    <div class="videoControls watchNav">
        <button onclick="goBack()"><i class="fa-solid fa-arrow-left"></i></button>
        <h1><?php echo $preview->getName(); ?></h1>
    </div>

    <video controls autoplay>
        <source src='<?php echo $preview->getPreview(); ?>' type="video/mp4">
    </video>
</div>
<script>
    initVideo();
</script>