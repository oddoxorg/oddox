<div class="w3-container w3-row w3-margin-top">
<div class="w3-col s4 m4 l4">
<!-- <%
	String uri = (String) request.getAttribute("URI");
	
	// Valid URIs might have different contexts.
	// /blog/page/1
	// /year/2017/page/1
	// /category/test/page/1
	// /tag/java/page/1
	// /author/page/1
	// /manage/posts/page/1
	// /manage/users/page/1
	
	if(uri.endsWith("/WEB-INF")) {
		uri = uri.replace("/WEB-INF","");
	}
	if(uri.endsWith(".jsp")) {
		uri = uri.replace(".jsp","");
	}
	
	if(uri.contains("/page/")) {
		String context = uri.substring(0,uri.indexOf("/page/"));
		uri = context + "/page";
	} else {
		uri = uri + "/page";
	}
	
	// remove any duplicate slashes
	while(uri.contains("//")) {
		uri = uri.replace("//", "/");	
	}
	request.setAttribute("uri", uri);
 %> -->
<#if prevPage>
	<a class="w3-btn w3-round w3-small w3-theme w3-hover-light-grey w3-hover-shadow w3-left" href="${(req.uri)!''}/${(page)!'' - 1}"><span class="icon-arrow-left w3-large w3-margin-right"></span> Prev Page</a>
</#if>&nbsp;
</div>
<div class="w3-col s4 m4 l4 w3-center">
	<span class="w3-small w3-text-grey">Page ${(page)!'?'}</span>
	<br/>
</div>
<div class="w3-col s4 m4 l4">
<#if nextPage>
	<a class="w3-btn w3-round w3-small w3-theme w3-hover-light-grey w3-hover-shadow w3-right" href="${(req.uri)!''}/${(page)!'' + 1}"><span class="icon-arrow-right w3-large w3-margin-right"></span>Next Page</a>
</#if>&nbsp;
</div>
</div>