<?php

session_start();

$TITLE = "Cart";

include_once("layout/header.php");
include_once("include/product.php");
include_once("include/shoppingcart.php");

$Cart = new ShoppingCart();
$Cart = $_SESSION["cart"];
$Cart = unserialize($Cart);
$Cart->ShowProducts();



?>