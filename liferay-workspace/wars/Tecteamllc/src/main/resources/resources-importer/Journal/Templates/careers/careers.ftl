<div class="main-careers">
    <div class="row">
        <#assign spans = ["span-left", "span-center", "span-right"]>
        <#if postTitle.getSiblings()?has_content>
        	<#list postTitle.getSiblings() as cur_postTitle>
                <div class="col-md-4">
                    <div class="box-careers">
                    <div class="span-image">
                        <img src="${cur_postTitle.postImage.getData()}" alt="">
                    </div>
                    <#assign index = cur_postTitle_index%3>
                    <div class="${spans[index]}">
                        <h2>${cur_postTitle.getData()}</h2>
                        <p>${cur_postTitle.postDescription.getData()}</p>
                    </div>
                    </div>
                </div>
        	</#list>
        </#if>
    </div>
</div>