<div class="categories-box">
    <ul class="list-group">
        <#if entries?has_content>
        	<#list entries as curVocabulary>
            	<#if curVocabulary.getCategories()?has_content>
                	<#list curVocabulary.getCategories() as curCategory>
                	<li class="list-group-item">
                    ${curCategory.name}
                </li>
                <li class="divider-categories"></li>
                	</#list>
                </#if>
        	</#list>
        </#if>
    </ul>
</div>