<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="org.acegisecurity.ui.webapp.AuthenticationProcessingFilter" %>
<%@ include file="/protected/taglibs.jsp"%>

<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="text/html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="static/favicon.png">
	<title>微信后台管理</title>

	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
    
    <script src="js/bootstrap.js" ></script>
    <script src="js/jquery.js" ></script>
    
    <script>
    	function clickImg(obj){

    	   obj.src="captcha?"+ new Date().getTime();
    	}	
    
    
    </script>
    
</head>
<body>




 <div class="container">
<form action="<c:url value='j_acegi_security_check'/>" method="POST" class="form-signin">
	<h2 class="form-signin-heading">Please sign in</h2>
	
		<input type="text" name='j_username' class="form-control" placeholder="username"  <c:if test="${not empty param.login_error}">value='<%= session.getAttribute(AuthenticationProcessingFilter.ACEGI_SECURITY_LAST_USERNAME_KEY) %>'</c:if>  required >
    <input type="password" name='j_password' class="form-control" placeholder="Password" required>

    <div style="margin-bottom:10px">
    	<input type="text" class="form-control" style = "max-width:180px;display:inline" placeholder="imagecode" name="j_imagecode" required/>
    	<img  style="display:inline" src='captcha?' onclick="clickImg(this)" />
	</div>
	<div>
		<c:if test="${not empty param.login_error}">
			<font color="red">Invalid username or password, try again !<BR>
			</font>
		</c:if>
	</div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        


</form>
</div>
</body>
</html>
