<div class="top-footer">
    <div class="row">
        <#if sectionTitle.getSiblings()?has_content>
        	<#list sectionTitle.getSiblings() as cur_sectionTitle>
        		<div class="col-md-3">
                    <div class="span-footer">
                        <#if cur_sectionTitle.sectionImage?has_content && cur_sectionTitle.sectionImage.getData() != ''>
                            <div class="logo-brand">
                                <img src="${cur_sectionTitle.sectionImage.getData()}" alt="">
                            </div>
                        </#if>
                        <#if cur_sectionTitle?has_content && cur_sectionTitle.getData() != '' >
                            <h6>
                                <i class="fa ${cur_sectionTitle.sectionIconClass.getData()}" aria-hidden="true"></i>&nbsp;                                 ${cur_sectionTitle.getData()}
                            </h6>
                            <#if cur_sectionTitle.sectionSubtitle?has_content && cur_sectionTitle.sectionSubtitle.getData() != ''>
                                <p>${cur_sectionTitle.sectionSubtitle.getData()}</p>
                            </#if>
                        </#if>
                    </div>
                </div>
        	</#list>
        </#if>
    </div>
</div>
<hr class="footer">