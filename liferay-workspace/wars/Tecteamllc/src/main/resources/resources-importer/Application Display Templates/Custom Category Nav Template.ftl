<div>
    <#assign assetEntryLocalService = serviceLocator.findService("com.liferay.asset.kernel.service.AssetEntryLocalService") />
    <div class="categories-container">
        <h3>Categories</h3>
        <hr class="short">
        <div class="categories-box">
            <ul class="list-group">
                <#if entries?has_content>
                	<#list entries as curVocabulary>
                    	<#if curVocabulary.getCategories()?has_content>
                        	<#list curVocabulary.getCategories() as curCategory>
                        	<#assign categoryUrl = portalUtil.getLayoutURL(themeDisplay)>
                        	<#assign categoryUrl = categoryUrl+ "/-/categories/"+ curCategory.getCategoryId()>
                        	<li class="list-group-item">
                        	    <#assign totalBlogEntry = 0>
                            	<#list assetEntryLocalService.getAssetCategoryAssetEntries(curCategory.categoryId) as entry>
                                	<#if entry.getModelClassName() == "com.liferay.asset.kernel.model.AssetEntry">
                                	    <#assign totalBlogEntry++>
                                	</#if>
                            	</#list>
                        	    <span class="badge">(${totalBlogEntry})</span>
                                <a href="${categoryUrl}">
                                    ${curCategory.name}
                                </a>
                            </li>
                            <li class="divider-categories"></li>
                        	</#list>
                        </#if>
                	</#list>
                </#if>
            </ul>
        </div>
    </div>
</div>