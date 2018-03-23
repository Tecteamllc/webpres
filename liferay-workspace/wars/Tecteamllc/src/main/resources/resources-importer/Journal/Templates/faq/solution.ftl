<h3>${heading.getData()}</h3>
<hr class="short">
<div class="list-group">
    <#if solution.getSiblings()?has_content>
    	<#list solution.getSiblings() as cur_solution>
    		<a href="${cur_solution.solutionLink.getData()}" class="list-group-item">
                ${cur_solution.getData()}
            </a>
    	</#list>
    </#if>
</div>