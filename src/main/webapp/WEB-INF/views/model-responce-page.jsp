<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored = "false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Model | </title>
</head>
<body>
    
    <% 
    
        String name =(String)request.getAttribute("name");
        /* List<String> flist =(List<String>)request.getAttribute("friends"); */
    
    %>
    
    <h4>Welcome to Model Response Page</h4>
    <%-- Name : <span> <%=name %> </span> --%>
    <h5>Name :</h5> <span> ${name }</span>
    
    <br>
    <h5>Friends :</h5>
    
    <%-- <% for(String fr:flist) { %>
    
        <%= fr %>,
        
    <% } %> --%>
    
    <c:forEach items="${friends}"  var="list">
        ${list} <br>
    </c:forEach>
    
    
    
</body>
</html>