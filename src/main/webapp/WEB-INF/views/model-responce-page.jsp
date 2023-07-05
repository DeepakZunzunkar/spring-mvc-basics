<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored = "true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Model | </title>
</head>
<body>
    
    <% 
    
        String name =(String)request.getAttribute("name");
        List<String> flist =(List<String>)request.getAttribute("friends");
    
    %>
    
    <h4>Welcome to Model Response Page</h4>
    Name : <span> <%=name %> </span>
    <br>
    Friends :
    <% for(String fr:flist) { %>
    
        <%= fr %>,
        
    <% } %>
    
    
</body>
</html>