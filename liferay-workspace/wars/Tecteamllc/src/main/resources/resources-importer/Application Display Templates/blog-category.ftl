<div class="search-box">
     <form class="search-container">
        <div class="form-group" style="display:inline;">
          <div class="input-group">
            <input type="text" placeholder="Seach items" class="form-control">
            <span class="input-group-addon">
                <i class="fa fa-search" aria-hidden="true"></i>
            </span>
          </div>
        </div>
      </form>             
</div>
<div class="categories-container">
    <h3>Categories</h3>
    <hr class="short">
    <div class="categories-box">
        <ul class="list-group">
            <#if entries?has_content>
            	<#list entries as curVocabulary>
                	<#if curVocabulary.getCategories()?has_content>
                    	<#list curVocabulary.getCategories() as curCategory>
                    	<li class="list-group-item">
                        ${curCategory.name}
                    </li>
                    <li class="divider-categories"></li>
                    	</#list>
                    </#if>
            	</#list>
            </#if>
        </ul>
    </div>
</div>
