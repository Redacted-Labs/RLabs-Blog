<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<g:applyLayout name="main">
	<head>	
	</head>
	
	<body>
		<!-- Create Post form -->
		<div>
			<g:form  class="well" controller="post" action="submit" method="post" autocomplete="off" >
				<label>Title:</label><g:textField name="title"/>
				<label>Content:</label><g:textArea name="content"/>
				<br>
				<g:submitButton name="Create Post"/>
			</g:form>
		</div>
		
      <hr>
      
	</body>
	</g:applyLayout>
</html>