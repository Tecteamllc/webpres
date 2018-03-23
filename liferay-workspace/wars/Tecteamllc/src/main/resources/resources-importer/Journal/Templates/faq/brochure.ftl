<h3>${heading.getData()}</h3>
<hr class="short">
<div class="list-group">
<#if solution.getSiblings()?has_content>
	<#list solution.getSiblings() as cur_solution>
		<a href="${cur_solution.externalLink.getData()}" class="list-group-item"><i class="fa ${cur_solution.iconClassName.getData()}" aria-hidden="true"></i>&nbsp;&nbsp; ${cur_solution.getData()}</a>
	</#list>
</#if>
</div>