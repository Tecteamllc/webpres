<div class="row">
<#assign columnClass=['col-md-5 footer-column','col-md-3 news-column','col-md-4 footer-column']/>
    <#if heading.getSiblings()?has_content>
    	<#list heading.getSiblings() as cur_heading>
            <div class="${columnClass[cur_heading_index]}">
                <h5 class="footer-heading">${cur_heading.getData()}</h5>
                <hr class="short-footer">       
                ${cur_heading.description.getData()}
                <div class="social-footer">
                    <#if cur_heading.socialIcon.getSiblings()?has_content>
                    	<#list cur_heading.socialIcon.getSiblings() as cur_socialIcon>
                            <div class="social-icons">
                                <a href="${cur_socialIcon.socialLink.getData()}">
                                    <i class="fa ${cur_socialIcon.getData()}" aria-hidden="true"></i>
                                </a>
                            </div>
                    	</#list>
                    </#if>
                </div>
                <#if cur_heading.thumbnailImage.getSiblings()?has_content>
                    <div class="row">
                    	<#list cur_heading.thumbnailImage.getSiblings() as cur_thumbnailImage>
                    		<div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="footer-thumbnail">
                                    <#if cur_thumbnailImage.internalLink?has_content>
                                        <a href="${cur_thumbnailImage.internalLink.getData()}">
                                    <#else>
                                        <a href="${cur_thumbnailImage.externalLink.getData()}">
                                    </#if>
                                        <img src="${cur_thumbnailImage.getData()}" alt="">
                                    </a>
                                </div>
                            </div>
                    	</#list>
                    </div>
                </#if>
            </div>
        </#list>
    </#if>
</div>