<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

	<spring:url var="css" value="/resources/css"/>
	<spring:url var="js" value="/resources/js"/>
	<spring:url var="images" value="/resources/images"/>

<c:set var="contextRoot" value = "${pageContext.request.contextPath}"/>    


	<!--  ${contextRoot} says - ${greeting}  -->


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title} </title>

    <!-- Bootstrap core CSS -->  <!--  vendor/bootstrap/css -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/my.css" rel="stylesheet">

  <script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/BF1CEBF5-A89B-304F-84FD-CFFCD1CA040A/main.js" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="https://gc.kis.v2.scr.kaspersky-labs.com/A040AC1DCFFC-DF48-F403-B98A-5FBEC1FB/abn/main.css"/></head>

  <body>
	<!-- Nav -->
	<%@include file="./shared/navigationBar.jsp" %>
  
    <!-- Page Content -->
    <c:if test="${userClickHome == true }">
    	<%@include file="Home.jsp" %>
    </c:if>
    
    <!--  Load only user => about -->
    <c:if test="${userClickAbout == true }">
    	<%@include file="about.jsp" %>
    </c:if>
    
    <!--  Load only user => contact -->
    <c:if test="${userClickContact == true }">
    	<%@include file="contact.jsp" %>
    </c:if>

   	<!-- Footer -->
	<%@include file="./shared/footer.jsp" %>
    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
	<!-- vendor/bootstrap/   vendor/jquery -->
  </body>

</html>
