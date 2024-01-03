<%-- 
    Document   : header
    Created on : Sep 24, 2023, 11:07:07 PM
    Author     : My pc
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<c:if test="${admin!=null}">
    
<p>Welcome ${admin.name}</p>
<p><a href="logout">Logout</a></p>
</c:if>
<%@include file="menu.jsp" %>

