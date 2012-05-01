<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<g:applyLayout name="main">
	<head>	
	</head>
	
	<body>
		<div>
			<h2>${post.title}</h2>
			<div>
				${post.content}
			</div>
		</div>
		<br>
		      -&gt;${post.author.username}
		
      <hr>
      
	</body>
	</g:applyLayout>
</html>