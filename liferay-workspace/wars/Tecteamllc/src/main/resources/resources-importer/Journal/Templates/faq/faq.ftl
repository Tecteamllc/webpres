<div class="faq">
    <div class="faq-container">
        <h3>${heading.getData()}</h3>
        <p>I${description.getData()}</p>
    </div>
    <#if question.getSiblings()?has_content>
    	<#list question.getSiblings() as cur_question>
    		<button class="accordion"><strong>Q</strong>&nbsp; ${cur_question.getData()}</button>
    		<div class="panel">
                ${cur_question.answer.getData()}
            </div>
    	</#list>
    </#if>
</div>