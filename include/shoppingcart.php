<?php
	
	include_once("include/product.php");

	class ShoppingCart 
	{ 
	
		public $products = array();
		public $tempProduct;
		public $totalPrice;
		
		public function ShoppingCart()
		{		

		}
		
		public function ClearCart()
		{
			unset($products);
			$products = array();
		}
		
		public function SerializeData()
		{
			$str = serialize($products);
			return urlencode($str);
		}
		
		public function UnserializeData($str)
		{
			$products = unserialize(urldecode($str));
			var_dump($products);
		}
		
		public function AddProduct($product)
		{
			array_push($this->products,$product);
		}
		
		public function RemoveProduct($tid)
		{
         $this->totalPrice - $this->products[$tid]->getPrice();
         unset($this->products[$tid]);

         if(empty($this->products)){
            $this->totalPrice = 0;
         }
			/*for($i = 0;$i < count($this->products);$i++)
			{
				$this->tempProduct = $this->products[$i];
				if($this->tempProduct->GetId() == $tid)
				{
					unset($this->products[$i]);
				}
				$this->totalPrice = 0;
			}*/
		}
		
		public function ShowProducts()
		{
			$strHTML = "<table class='orderTbl'>
               <tr>
                  <th colspan='3'>Shopping Cart</th>
                  <th><a href='cart.php?Action=Clear'>Clear Cart</a></th>
               </tr>
					<tr>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th></th>
					</tr>";

         $i = 0;

			foreach ($this->products as $this->tempProduct) 
			{
				$strHTML .= $this->tempProduct->ShowInCart() . 
            "<td><a href='cart.php?Action=Delete&ProdID=".$i++."'>Remove Item</a></td>
            </tr>";
				$this->totalPrice = $this->tempProduct->GetTotalCost() + $this->totalPrice;
			}
			 
         $strHTML .= "
         <tr>
            <td><b>Total Price:<b></td>
            <td>&nbsp;</td>
            <td></td>
            <td>R".$this->totalPrice."</td>
            <td>&nbsp;</td>
         </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
            <td><form method='post' action='index.php?Action=Checkout'>
               <input type='submit' name='submit' value='Checkout'>
               </form>
            </td>
         </tr>
            </table>";


         echo $strHTML;
		}
	} 
	
?>