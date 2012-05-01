<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<g:applyLayout name="main">
	<head>	
	</head>
	
	<body>
		<!-- Login form -->
		<div>
		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>
			<form class="well" action="/RLabs-Blog/j_spring_security_check" method="post" autocomplete="off" >
				<label>Username:</label><g:textField name="j_username"/>
				<label>Password:</label><g:passwordField name="j_password"/>
				<br>
				<g:submitButton name="Login"/>
			</form>
		</div>
		
      <hr>
      
	</body>
	</g:applyLayout>
</html>