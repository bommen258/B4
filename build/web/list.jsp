<%-- 
    Document   : list
    Created on : Sep 19, 2023, 9:47:24 PM
    Author     : My pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Party</title>
           <%@include file="common/header.jsp" %>
      
    </head>
    <body>
        <div class="text-center">
            
      
        <%@include file="header.jsp" %>

        <h1>Member</h1>
            <br>
        <c:if test="${admin!=null}">
              <a href="add">Add</a>
        </c:if>
        <form action ="/">
            Name: <input type="text" name="name" value="${name}"/> <input type="submit" value="Search"  />                  
        </form>
  
              </br>
              </div>
      <div class="d-flex justify-content-center">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Address</th>
                        <c:if test="${admin!=null}">
                        <th>Update</th>
                        <th>Delete</th>
                        </c:if>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="person" items="${list}">
                    <tr>
                        <td>${person.id}</td>
                        <td>${person.name}</td>
                        <td>${person.age}</td>
                        <td>${person.address}</td>
                        <c:if test="${admin!=null}">
                            <td style="text-align:center ">
                                <form action="update1" method="GET">
                                    <input type="hidden" name="id" value="${person.id}">
                                    <input type="submit" value="Update" />
                                </form>
                            </td>
                            <td style="text-align:center ">
                                <form action="delete" method="POST">
                                    <input type="hidden" name="id" value="${person.id}">
                                    <input type="submit" value="X" />
                                </form>

                            </td>
                        </c:if>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
              
        <p>${msg}</p>
        <c:set var="msg" value="${null}" scope="session"></c:set>
               </div> 
    </body>
</html>
