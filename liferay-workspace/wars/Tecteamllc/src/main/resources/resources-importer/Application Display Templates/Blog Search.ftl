<div class="main row">
    <div class="search-box">
        <form class="search-container">
            <div class="form-group" style="display:inline;">
                <div class="input-group">
                    <input type="text" placeholder="Seach items" 
                    class="form-control">
                    <span class="input-group-addon">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </span>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    $(document).on('submit', '.search-container', function(event) {
    
        event.preventDefault();
    
        var redirectURL = '${currentURL}';
    
    
        if(jQuery(this).find('input').val() == "") {
    
        	return false;
    
        }
        window.location = '${portalUtil.getLayoutFriendlyURL(themeDisplay)}?p_p_id=com_liferay_portal_search_web_portlet_SearchPortlet&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&_com_liferay_portal_search_web_portlet_SearchPortlet_mvcPath=/search.jsp&_com_liferay_portal_search_web_portlet_SearchPortlet_scope=this-site&_com_liferay_portal_search_web_portlet_SearchPortlet_cur=1&_com_liferay_portal_search_web_portlet_SearchPortlet_entryClassName=com.liferay.blogs.kernel.model.BlogsEntry&_com_liferay_portal_search_web_portlet_SearchPortlet_keywords=' + $(this).find('input').val() + '&_com_liferay_portal_search_web_portlet_SearchPortlet_redirect='+redirectURL;
    });
</script>