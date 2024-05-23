<?php
require_once("includes\config.php");
require_once("includes\classes\FormSanitizer.php");
require_once("includes\classes\Constants.php");
require_once("includes\classes\Account.php");

    $account = new Account($con);

    if(isset($_POST["submitButton"])) {
        $username = FormSanitizer::sanitizeFormUsername($_POST["username"]);
        $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);

        $success = $account->login($username, $password);
        
        if($success) {
            $_SESSION["userLoggedIn"] = $username;
            header("Location: index.php");
        }
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to LSD</title>
        <link rel="stylesheet" type="text/css" href="assets/style/style.css" />
    </head>
    <body>
        <video autoplay muted loop id="myVideo">
            <source src="assets\images\bgvideo.mp4" type="video/mp4">
        </video>

        <div class="signInContainer">
            <div class="column">
                <div class="header">
                    <img src="assets\images\lsdlogo.png" title="logo" alt="Site Logo"/>
                    <h3>Sign In</h3>
                    <span>Lights, Sound, Drama</span>
                </div>

                <form method="POST">

                <?php echo $account->getError(Constants::$loginFailed); ?>
                    <input type="text" name="username" placeholder="Username" required>
                    <input type="password" name="password" placeholder="Password" required>
                    <input type="submit" name="submitButton" value="SUBMIT">
                </form>

                <a href="register.php" class="signInMessage">Don't have an account? Sign up here!</a>
            </div>
        </div>
    </body>
</html>