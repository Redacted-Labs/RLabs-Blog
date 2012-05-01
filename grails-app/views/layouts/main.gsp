<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Redacted Labs<g:layoutTitle/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <g:layoutHead/>
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="<g:createLink action="index" controller="default" />">Redacted Labs</a>
          
          <!-- IF You are logged in -->
          <g:if test="${user}">
	          <div class="btn-group pull-right">
	            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
	              <i class="icon-user"></i>${user.username}
	              <span class="caret"></span>
	            </a>
	         
	         
	            <ul class="dropdown-menu">
	              <li><a href="<g:createLink action="create" controller="post" /> ">Create Post</a></li>
	              <li><a href="<g:createLink action="delete" controller="post" /> ">Delete Posts</a></li>
	              <li class="divider"></li>
	              <li><a href="/RLabs-Blog/j_spring_security_logout">Sign Out</a></li>
	            </ul>
	          </div>
          </g:if>
          <g:else>
          		<div class="btn-group pull-right">
		            <a class="btn" href="<g:createLink action="authenticate" controller="user" />">
		              <i class="icon-user">&gt;</i>Login
		            </a>
	            </div>
          </g:else>
          <!-- Close if -->
          
          <div class="nav-collapse">
            <ul class="nav">
              <li><a href="<g:createLink action="about" controller="default" />">About</a></li>
              <li><a href="<g:createLink action="contact" controller="default" />">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

   <div class="container">
	<g:layoutBody/>
<footer>
        <p>&copy; Redacted Labs 2012</p>
    </footer>
    </div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
	<script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
	
	
  	
  </body>
</html>
