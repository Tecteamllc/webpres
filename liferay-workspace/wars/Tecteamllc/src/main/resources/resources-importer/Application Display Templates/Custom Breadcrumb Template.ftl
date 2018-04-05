<div class="span-title">
    <h1>
    <#assign size = entries?size>
        ${entries[size -1 ].getTitle()}
    </h1>
    <div class="page-map">
        <p>
        <#if entries?has_content>
        	<#list entries as curEntry>
        		${curEntry.getTitle()}
        		<#if curEntry_index < entries?size - 1>
        		&nbsp;/&nbsp;
        		</#if>
        	</#list>
        </#if>
        </p>
    </div>
</div>