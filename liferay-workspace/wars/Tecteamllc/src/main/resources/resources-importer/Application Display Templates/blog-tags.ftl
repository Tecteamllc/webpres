<div class="tags-container">
<#if entries?has_content>
	<#list entries as curTag>
		<div class="tags-items"><button type="button" class="btn btn-default"><i class="fa fa-tags" aria-hidden="true"></i>&nbsp;${curTag.name}</button></div>
	</#list>
</#if>
</div>