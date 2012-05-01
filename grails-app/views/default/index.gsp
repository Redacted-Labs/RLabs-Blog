<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<g:applyLayout name="main">
	<head>	
	</head>
	
	<body>
		<div class="hero-unit">
	        <h1>Redacted Labs</h1>
	        <p>Redacted Labs is a company focused on security and other stuff.</p>
	        <p><a href="<g:createLink action="about" controller="default" />" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
     	</div>
      
      <!-- Posts -->
      <div class="row">
      <g:each var="post" in="${posts}">
	      
	        <div class="span4">
	          <h2>${post.title}</h2>
	          <g:if test="${post?.content?.size() > 200}">
	           <p>${(post.content[0..200])}</p>
	          </g:if>
	          <g:else>
	          	<p>${post.content}</p>
	          </g:else>
	          <p><a class="btn" href="<g:createLink action="view" controller="post" id="${post.id}" /> ">More &raquo;</a></p>
	        </div>
	      
      </g:each>
      </div>
      
      <center>
	      <div class="show-more">
	      	<div class="btn"><a  href="<g:createLink action="showAll" controller="post" /> " >Show All</a></div>
	      </div>
      </center>
      
      <hr>
            
	</body>
	</g:applyLayout>
</html>