<div>
<div class="popular-posts">
    <h3>Recent Posts</h3>
    <hr class="short">
    <div class="recent-posts">
        <#if entries?has_content>
        	<#list entries as curEntry>
            	<#if curEntry.getAssetRenderer().getAssetObject().getModelClassName() == "com.liferay.blogs.kernel.model.BlogsEntry">
            	
            	<#assign blogPageUrl = portalUtil.getLayoutURL(themeDisplay)>
                <#assign blogUrlTitle = curEntry.getAssetRenderer().getAssetObject().getUrlTitle()>
                <#assign blogPageUrl = blogPageUrl + "/-/blogs/"+blogUrlTitle>
                
                <#assign blogPageUrl = blogPageUrl + "?_com_liferay_blogs_web_portlet_BlogsPortlet_redirect="+ currentURL/>
            	
            	    <div class="media">
                        <div class="media-left">
                            <a href="${blogPageUrl}">
                              <img class="media-object" src="${curEntry.getAssetRenderer().getAssetObject().getSmallImageURL(themeDisplay)}" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading">${curEntry.getTitle(locale)}</h5>
                            <p>${dateUtil.getDate(curEntry.getPublishDate(),"MMMMM dd, yyyy",locale)}</p>
                            <p> By ${curEntry.getUserName()}</p>
                        </div>
                    </div>
                    <hr>
        		</#if>
        	</#list>
        </#if>
    </div>
</div>
</div>