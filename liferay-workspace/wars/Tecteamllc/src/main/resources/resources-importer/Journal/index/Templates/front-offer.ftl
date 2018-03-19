<div class="main">
    <div class="section">
        <div class="row">
        <#if backgroundImage.getSiblings()?has_content>
            <#assign overlayCount = 1>
        	<#list backgroundImage.getSiblings() as cur_backgroundImage>
                <div class="col-md-4 front-offer overlay-${overlayCount}" style="background-image:url('${cur_backgroundImage.getData()}')">
                    <div class="offer-info">
                        <h4>${cur_backgroundImage.mainTitle.getData()}</h4>
                        <h6>${cur_backgroundImage.subTitle.getData()}</h6>
                        <p>${cur_backgroundImage.description.getData()}</p>
                    </div>
                </div>
                <#assign overlayCount++>
        	</#list>
        </#if>
        </div>
    </div>
</div>