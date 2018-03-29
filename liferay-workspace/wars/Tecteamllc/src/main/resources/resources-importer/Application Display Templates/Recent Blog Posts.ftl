<div class="popular-posts">
	<h3>Recent Posts</h3>
	<hr class="short">
    <div class="recent-posts">
        <#if entries?has_content>
        	<#list entries as entry>
        	
            	<#assign renderer = entry.getAssetRenderer() />
            	<#assign className = renderer.getClassName() />
            	<#assign smallImageURL = "" />
            	
                <#if className == "com.liferay.blogs.kernel.model.BlogsEntry">
                    <#assign curBlogEntry = renderer.getAssetObject() />
                    
                    <#assign viewEntryPortletURL = renderResponse.createRenderURL() />
    
            		${viewEntryPortletURL.setParameter("mvcRenderCommandName", "/blogs/view_entry")}
            
            		<#if validator.isNotNull(curBlogEntry.getUrlTitle())>
            			${viewEntryPortletURL.setParameter("urlTitle", curBlogEntry.getUrlTitle())}
            		<#else>
            			${viewEntryPortletURL.setParameter("entryId", curBlogEntry.getEntryId()?string)}
            		</#if>
            		
            		<#if validator.isNotNull(curBlogEntry.getSmallImageURL())>
					    <#assign smallImageURL = curBlogEntry.getSmallImageURL()/>
					<#else>
						 <#assign smallImageURL = themeDisplay.getPathImage()+"/template?img_id="+ curBlogEntry.getSmallImageId()+"&t="+ webServerToken.getToken(curBlogEntry.getSmallImageId()) />
					</#if>
            		
                    <div class="media">
                        <div class="media-left">
                            <a href="${viewEntryPortletURL.toString()}">
                                <img class="media-object" src="http://placehold.it/150x150" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading">${curBlogEntry.title}</h5>
                            <p>${curBlogEntry.displayDate?string('MMMMM dd, yyyy  hh:mm aaa')}</p>
                            <p>By ${curBlogEntry.userName}</p>
                        </div>
                    </div>
                    <hr>
                </#if>
            </#list>
        </#if>
    </div>
</div>