<%-- 
    Document   : update1
    Created on : Sep 22, 2023, 10:27:09 PM
    Author     : My pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PERSON</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <h1>UPDATE PERSON</h1>
        <form action="update1" method="post">
            <input type="hidden" name="id" value="${person.id}">
            Name:<input type="text" name="name" value="${person.name}" required/>
            <br/>
            Age:<input type="number" name="age" value="${person.age}" required/>
            <br/>
            <br/>
            Address:   <select name="address">
                <c:forEach var="address" items="${addressList}">
                    <option value="${address.id}" ${person.address.equals(address.address) ? "selected" :"" }>${address.address}</option>
                </c:forEach>
                    </select>
                    <br/>
                    
                <input type="submit" name="Update"/>
                <br/>
        </form>
    </body>
</html>
