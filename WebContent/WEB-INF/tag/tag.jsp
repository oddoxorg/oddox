<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"
	errorPage="/WEB-INF/error/error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/WEB-INF/fragment/meta.jspf"%>

<title>Tag <s:property value="tag" /> - RamblingWare</title>
</head>
<body class="w3-theme-dark">

	<%@include file="/WEB-INF/fragment/header.jspf"%>

	<article class="w3-theme-light">
		<div class="page w3-row">
			
			<%@include file="/WEB-INF/fragment/tabs.jspf"%>
			
			<div id="page-content" class="w3-col m8 l8 w3-container w3-padding">
				
				<h1 style="vertical-align: middle;"><span class="icon-tag w3-text-theme"></span>&nbsp;Tag: <s:property value="tag" /></h1>
				
				<s:if test="posts != null">
				<s:if test="posts.isEmpty()">
					<p class="w3-padding w3-border w3-card-2 w3-round w3-pale-red w3-text-red w3-border-red">
					<span class="icon-cross w3-large w3-margin-right"></span>
						No posts were found with that tag.</p>
				</s:if>
				<s:else>
					<s:if test="posts.size() == 1">	
						<p>1 blog post tagged with <s:property value="tag" />.<br /></p>
					</s:if>
					<s:else>
						<p><s:property value="posts.size()" /> blog posts tagged with <s:property value="tag" />.<br /></p>
					</s:else>
					
					<s:iterator value="posts" status="r">
						<%@include file="/WEB-INF/blog/card-post.jspf" %>
					</s:iterator>
					
					<%@include file="/WEB-INF/fragment/pagination.jspf" %>
				
				</s:else>
				</s:if>
				
				<div class="w3-container w3-padding-left w3-padding-right w3-center">
					<hr />
					<p class="w3-large"><a href="/tag/">See more tags...</a></p>
				</div>
			</div>

			<%@include file="/WEB-INF/fragment/archive.jspf" %>
		</div>
	</article>

	<%@include file="/WEB-INF/fragment/footer.jspf"%>
</body>
</html>