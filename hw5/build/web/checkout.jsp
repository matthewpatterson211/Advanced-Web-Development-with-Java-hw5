<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>hw5</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<h1>Thanks for your order</h1>

<p>Here is the information you ordered:</p>

<table>
  <tr>
    <th>Cover</th>
    <th>Title</th>
    <th>Price</th>
    <th>Amount</th>
    <th>Quantity</th>
        <c:set var="grandtotal" scope="session" value="0"></c:set>
    
<%@ taglib uri="/WEB-INF/murach.tld" prefix="mma" %>

<mma:cart>
    
  <tr>
      <td><img src="${cover}"  width="25%" height="25%"></td>
    <td>${productDescription}</td>
    <td>${productPrice}</td>
    <td>${total}</td> 
    <td>${quantity}</td>
    
    <c:set var="grandtotal" value="${grandtotal + unformatedtotal}"></c:set>
 
  </tr>
  
</mma:cart>
<tr>
      <th>Total</th>
      <th></th>
      <th></th>
      <fmt:setLocale value = "en_US"/>
      <th><fmt:formatNumber value = "${grandtotal}" type = "currency"/></th>
      <th></th>
  </tr>
  
</table>
 
<p>To order another book click on the button below.</p>



<form action="" method="post" class="pad_top">
  <input type="hidden" name="action" value="return">
  <input type="hidden" name="productCode" 
                       value="<c:out value='${productCode}'/>">
                <input type="hidden" name="quantity" value="0">
  <input type="submit" value="Return">
</form>


</body>
</html>