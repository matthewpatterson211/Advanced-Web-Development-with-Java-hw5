<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>hw5</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<h1>Your cart</h1>


<table>
  <tr>
    <th>Cover</th>
    <th>Title</th>
    <th>Price</th>
    <th>Amount</th>
    <th>Quantity</th>
    <th></th>
    
<%@ taglib uri="/WEB-INF/murach.tld" prefix="mma" %>
<mma:cart>
    
  <tr>
      <td><img src="${cover}"  width="25%" height="25%"></td>
    <td>${productDescription}</td>
    <td>${productPrice}</td>
    <td>${total}</td>
    <td><form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${productCode}'/>">
                <input type=text name="quantity" 
                       value="<c:out value='${quantity}'/>"  
                       id="quantity">
                <input type="submit" value="Update">
            </form>
    </td>
    <td>
        <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${productCode}'/>">
                <input type="hidden" name="quantity" value="0">
                <input type="submit" value="Remove Item">
            </form>
    </td>
  </tr>
</mma:cart>

</table>
 
<p><b>To change the quantity</b>,enter the new quantity and click on the Update button.<br></p>



<form action="" method="post" class="pad_top">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Continue Shopping">
</form>

<form action="" method="post">
    <input type ="hidden" name="action" value="checkout">
    <input type="submit" value="Checkout">
</form>


</body>
</html>