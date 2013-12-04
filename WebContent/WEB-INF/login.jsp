
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<%@ page
	import="org.acegisecurity.ui.webapp.AuthenticationProcessingFilter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="static/favicon.png">
	<title>Acegi sample application: Login page</title>

	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
    
</head>
<body>


<c:if test="${not empty param.login_error}">
	<font color="red">Invalid username or password, try again !<BR>
	</font>
</c:if>

 <div class="container">
<form action="<c:url value='j_acegi_security_check'/>" method="POST" class="form-signin">
	<h2 class="form-signin-heading">Please sign in</h2>
	
	<input type="text" name='j_username' class="form-control" placeholder="Email address"  <c:if test="${not empty param.login_error}">value='<%= session.getAttribute(AuthenticationProcessingFilter.ACEGI_SECURITY_LAST_USERNAME_KEY) %>'</c:if>  required autofocus>
    <input type="password" name='j_password' class="form-control" placeholder="Password" required>
    <label class="checkbox">
        <input type="checkbox" value="remember-me"> Remember me
    </label>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        


</form>
</div>
</body>
</html>
