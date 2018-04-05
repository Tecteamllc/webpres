<div class="main">
<div class="blog-container">
        <#if entries?has_content>
        	<#list entries as curBlogEntry>
        	<#assign viewEntryPortletURL = renderResponse.createRenderURL() />
    
    		${viewEntryPortletURL.setParameter("mvcRenderCommandName", "/blogs/view_entry")}
    
    		<#if validator.isNotNull(curBlogEntry.getUrlTitle())>
    			${viewEntryPortletURL.setParameter("urlTitle", curBlogEntry.getUrlTitle())}
    		<#else>
    			${viewEntryPortletURL.setParameter("entryId", curBlogEntry.getEntryId()?string)}
    		</#if>
                <div class="posts-list">
                    <#if curBlogEntry.getCoverImageURL(themeDisplay)??>
                    <div class="blog-prev-image">
                        <img src="${curBlogEntry.getCoverImageURL(themeDisplay)}" alt="">
                    </div>
                    </#if>
                    <div class="blog-prev-info">
                        <h2>${curBlogEntry.title}</h2>
                        <div class="blog-credit">
                            <div class="credit-items">
                                <p>By ${curBlogEntry.userName}</p>
                            </div>
                            <div class="credit-items">
                                <p>on ${curBlogEntry.displayDate?string('MMMMM dd, yyyy  hh:mm aaa')}</p>
                            </div>
                        </div>
                        <div class="blog-prev-content">
            <p>${stringUtil.shorten(htmlUtil.stripHtml(curBlogEntry.content), 500)}</p>
                        </div>
                        <p>
                        <a href="${viewEntryPortletURL.toString()}" class="btn btn-warning btn-more" role="button">READ MORE</a>
                        </p>
                    </div>
                </div>
    	</#list>
    </#if>
</div>
</div>