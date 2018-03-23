<div class="section-title">
    <h2>${sectionTitle.getData()}</h2>
    <hr class="center">
    <p class="careers">${description.getData()}</p>
</div>
<div class="row">
    <#if postTitle.getSiblings()?has_content>
    	<#list postTitle.getSiblings() as cur_postTitle>
        	<div class="col-md-4">
                <div class="box-services">
                    <div class="box-image"><img src="${cur_postTitle.postImage.getData()}" alt=""></div>
                    <div class="box-content">
                        <h3>${cur_postTitle.getData()}</h3>
                        <p>${cur_postTitle.postDescription.getData()}</p>
                    </div>
                </div>
            </div>
    	</#list>
    </#if>
</div>