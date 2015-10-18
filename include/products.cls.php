<?php
include_once("db/dbConn.php");
include_once("include/product.php");
include_once("include/shoppingcart.php");

class Products {

 	function __construct(){

 	}

 	function getList($ID){

      $product = new Product;
      global $db;

 		$strProductsHTML = "<table class='ProductsTbl'>
                  <tr>
                     <th>Name</th>
                     <th></th>
                     <th>Price</h>
                     <th>Description</th>
                     <th>Quantity</th>
                     <th></th>
                  </tr>";

   	$sqlProducts = "SELECT * 
   					 FROM product
                   WHERE refCategoryId = $ID and active = 1";

      $rstProducts = $db->query($sqlProducts);

      while($rowProducts = $rstProducts->fetch_assoc()){

         if($rowProducts["quantity"] == 0){
            $strQuantity = "<td colspan='2'>Out of Stock</td>"
         }else{
            $strQuantity = "<td><input type='number' id='quantity' name='quantity' min='1' max='". $rowProducts["quantity"]. "' value='1'></td>
               <td><input type='submit' value='Add to Cart' class='btnAddAction'></td>"
         }

         $strProductsHTML .= "
            <form method='post' action='".basename($_SERVER['PHP_SELF'])."?Action=Add&ID=".$rowProducts["Product_Id"]."'>
            <tr>
               <td>". $rowProducts["Product_Name"] . "</td>
               <td><img src='".$rowProducts["ImageLocation"]."' alt='Image'></td>
               <td>R". $rowProducts["Product_Price"]. "</td>
               <td>". $rowProducts["Description"]. "</td>
               $strQuantity;
            </tr>
            </form>";          
      }

      $strProductsHTML .= "</table>";

      if($_GET)
         $Action = $_GET['Action'];
      else
         $Action = "";

      switch ($Action) {
         case 'Add':
            if(!empty($_POST['quantity'])){
               $product->InitializeById($_GET['ID'], $_POST['quantity']);

               if(!empty($_SESSION["cart"])){
                  $Cart = $_SESSION["cart"];
                  $Cart = unserialize($Cart);
                  $Cart->AddProduct($product);
                  $_SESSION["cart"] = serialize($Cart);
                  unset($product);
                  }
            }
            break;
      }

      return $strProductsHTML;
 	}



 }


?>