<div class="sidebar">
    <div class="categories">
        <h3>${heading.getData()}</h3>
        <hr class="short">
        <div class="list-group">
        <#if itemLabel.getSiblings()?has_content>
        	<#list itemLabel.getSiblings() as cur_itemLabel>
        		<a href="${cur_itemLabel.itemLink.getData()}" class="list-group-item">
                    <i class="fa ${cur_itemLabel.itemIcon.getData()}" aria-hidden="true"></i>&nbsp;&nbsp;
                    ${cur_itemLabel.getData()}
                </a>
        	</#list>
        </#if>
        </div>
    </div>
</div>