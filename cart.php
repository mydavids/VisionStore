<?php

session_start();

$TITLE = "Cart";

include_once("layout/header.php");
include_once("include/product.php");
include_once("include/shoppingcart.php");

$Cart = new ShoppingCart();



if($_GET)
      $Action = $_GET['Action'];
   else
      $Action = "";

switch ($Action) {
	case 'Delete':
      $Cart = $_SESSION["cart"];
      $Cart = unserialize($Cart);
      $ProdID = $_GET['ProdID'];
		$Cart->RemoveProduct($ProdID);
      $Cart->ShowProducts();
      $_SESSION["cart"] = serialize($Cart);
		break;
   case 'Clear':
      unset($_SESSION["cart"]);
      //$Cart = unserialize($Cart);
      echo "<h1>Cart is Empty.</h1><h2>Please proceed to a category to start shopping</h2>";
      $_SESSION["cart"] = serialize($Cart);
      break;
   default:
         $Cart = $_SESSION["cart"];
         $Cart = unserialize($Cart);
         $Cart->ShowProducts(); 
      break;
}


?>