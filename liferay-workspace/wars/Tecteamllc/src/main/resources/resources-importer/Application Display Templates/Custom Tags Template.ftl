<div>
<div class="tags-container">
<#if entries?has_content>
    <h3>Popular Tags</h3>
    <hr class="short">
	<#list entries as curTag>
		<div class="tags-items">
            <#assign tagUrl = portalUtil.getLayoutURL(themeDisplay)>
            <#assign tagUrl = tagUrl+ "/-/tag/"+ stringUtil.replace(curTag.name, " ", "+")>
		    <a href="${tagUrl}" class="btn btn-default"><i class="fa fa-tags" aria-hidden="true"></i>&nbsp;${curTag.name}</a>
		</div>
	</#list>
</#if>
</div>
</div>