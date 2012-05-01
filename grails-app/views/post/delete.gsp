<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<g:applyLayout name="main">
	<head>	
	</head>
	
	<body>
		<div>
			<g:each var="post" in="${posts}">
				<div>
					<h2>${post.title}</h2>
					<div class="btn"><a href="<g:createLink action="remove" controller="post" id="${post.id}" />" >Delete</a></div>
					
				</div>
					<br>
			</g:each>
		</div>
		
      <hr>
      
	</body>
	</g:applyLayout>
</html>