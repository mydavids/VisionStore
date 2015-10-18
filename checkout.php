<?php

include_once("layout/header.php");
include_once("include/shoppingcart.php");

$Cart = $_SESSION["cart"];
$Cart = unserialize($Cart);
$USERID = $_SESSION["UserID"];

//var_dump($Cart->products);

foreach ($Cart->products as $product) {
   var_dump($product);

   $sqlDecrement = "UPDATE product SET quantity = quantity - 1 WHERE Product_Id = " . $product->id;
   if(!$db->query($sqlDecrement)){
      echo "OMG Error: ". $db->error;
   }

   $sqlCustomerOrder = "INSERT INTO customer_order (Cus_Id, Prod_Id, Price, Quantity) VALUES ('$USERID','$product->id', '$product->price', '$product->purchasedAmount')";
   if(!$db->query($sqlCustomerOrder)){
      echo "Error: Customer Order query, " . $db->error;
   }

   $sqlNextID = "SELECT Order_Id FROM customer_order ORDER BY Order_Id DESC LIMIT 1";
   $rstID = $db->query($sqlNextID);
   $rowID = $rstID->fetch_assoc();

   $sqlOrderLine = "INSERT INTO order_line (Prod_id, Order_id) VALUES ('$product->id', '".$rowID["Order_Id"]."')";
   if(!$db->query($sqlOrderLine)){
      echo "Error: OrderLine Query, " . $db->error;
   }
}

echo "<h1>Checked Out Successfully</h1>
   <h2>Thank you for shopping with Vision</h2>";
         

include_once("layout/footer.php");

?>
