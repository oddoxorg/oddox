<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"
	errorPage="/WEB-INF/error/error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/fragment/meta-manage.jspf"%>

<title>Login - RamblingWare</title>
</head>
<body class="w3-theme-dark">

	<!-- HEADER_BEGIN -->
	<%@include file="/WEB-INF/fragment/header.jspf"%>
	<!-- HEADER_END -->
	
	<article class="w3-theme-dark">
		<div class="page w3-row">
		
			<div id="page-content">
			
				<!-- LOGIN BEGIN -->
				<div class="w3-container w3-padding w3-col m3 l4"></div>
				<div class="w3-container w3-padding w3-col m6 l4">
				
					<div class="w3-border w3-round">
						<div class="w3-margin-0 w3-padding-0 w3-theme-light w3-center">
							<h3 class="w3-margin-0 w3-padding uppercase">Two Factor Authentication</h3>
						</div>
						<div class="w3-padding w3-theme-light">
						<form action="/manage/login" method="post">
							<div class="w3-card w3-round-large w3-theme-light w3-padding w3-large w3-center">
								<img class="w3-round" src="<s:property value="#session.USER.getThumbnail()"/>" align="top" style="width:24px; height:24px;" />
								&nbsp;<s:property value="#session.USER.getName()"/>
							</div>
							<p>   
								<label class="w3-validate w3-text-grey-light w3-large" for="code">Code:</label>
								<input type="text" size="50" maxlength="6" name="code" id="code" value="" required autofocus autocapitalize="off" autocorrect="off" autocomplete="off" placeholder="" class="w3-input w3-round-large w3-xlarge w3-border" />
							</p>
							<hr />
							<p>
								<button class="w3-btn w3-right w3-round w3-card w3-pale-green" type="submit" value="Login" title="Login">
									<span class="icon-key w3-large w3-margin-right"></span>Login</button>
								
								<a class="w3-btn w3-round w3-card w3-theme-light" title="Go to the home page" href="/manage/logout">Cancel</a>
							</p>
						</form>
						
							<p class="w3-small w3-text-grey w3-center">
								<a href="/manage/forgot?type=twofactor">I don't have this.</a>
							</p>
						</div>
					</div>
				</div>
				<div class="w3-container w3-padding w3-col m3 l3"></div>
				<!-- LOGIN END -->
					
				
				<br />
				<br />
				<br />
				<br />
			</div>
		</div>
	</article>
	
</body>
</html>