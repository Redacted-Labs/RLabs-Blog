<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<g:applyLayout name="main">
	<head>	
	</head>
	
	<body>
		<g:each var="post" in="${posts}">
			<div>
				<h2>${post.title}</h2>
				<g:if test="${post?.content?.size() > 400}">
		           <p>${(post.content[0..400])}</p>
		        </g:if>
		        <g:else>
		          	<p>${post.content}</p>
		        </g:else>
		        <div class="btn"><a href="<g:createLink action="view" controller="post" id="${post.id}" /> " >More</a></div>
			</div>
			 <br>
			 <hr>
		</g:each>
      
	</body>
	</g:applyLayout>
</html>