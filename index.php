<?php


if($_REQUEST)
   $ACTION = $_REQUEST['Action'];
else
   $ACTION = "";

//NAV
switch($ACTION){
   case "Login":
      $TITLE = "Login";
      include_once("/login.php");
   break;
   case "LoginSuccessful":
      session_start();
      $TITLE = "Home";
      include_once('/dashboard.php');
   break;
   case "Register":
      $TITLE = "Register";
      include_once("/register.php");
   break;
   case "RegSuccessful":
      $TITLE = "Register";
      include_once("/registerSuccess.php");
   break;
   case "Logoff":
      session_start();
      $_SESSION = array();
      session_destroy();
      $TITLE = "Goodbye!";
      include_once("/logoff.php");
   case "Checkout":
      session_start();
      $TITLE = "Checkout";
      include_once("/checkout.php");
   break;
   default:
      $TITLE = "Home";
      include_once("/home.php");
}

?>