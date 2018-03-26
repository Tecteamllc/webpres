<div class="bottom-footer">
    <div class="main">
        <div class="section">
            <div class="column-left">
                <p>${heading.getData()}</p>  
            </div>
            <div class="column-right">
                <p>
                <#if solution.getSiblings()?has_content>
                	<#list solution.getSiblings() as cur_solution>
                		<span><a href="${cur_solution.solutionLink.getData()}">${cur_solution.getData()}</a></span> &nbsp;•&nbsp;
                	</#list>
                </#if>
                </p>
            </div>
        </div>
    </div>
</div>