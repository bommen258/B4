<%-- 
    Document   : add
    Created on : Sep 19, 2023, 9:47:03 PM
    Author     : My pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD PERSON</title>
    </head>
    <body>
        
       <%@include file="header.jsp" %>
       <br>
       
        <form action="add" method="post">
            Name:<input type="text" name="name" />
            <br/>
             Age:<input type="nuber" name="age" value="${age}" required/>
            <br/>
         Address:   <select name="address">
                <c:forEach var="address" items="${addressList}">
                     <option value="${address.id}">${address.address}</option>
                </c:forEach>
               
            </select>
             <br/>
              <input type="submit" name="Add"/>
            <br/>
        </form>
        <p>${msg}</p>
    </body>
</html>
