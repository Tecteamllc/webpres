<div class="main">
    <div class="section">
        <h2>${heading.getData()}</h2>
        <hr class="center">
        <div class="open-position">
            <ul class="nav nav-tabs" role="tablist">
                <#if tabLabel.getSiblings()?has_content>
                    <#list tabLabel.getSiblings() as cur_tabLabel>
                        <#if cur_tabLabel_index == 1>
                            <#assign active="active">
                        <#else>
                            <#assign active="">
                        </#if>
                    	<li role="presentation" class="${active}">
                            <a href="#${cur_tabLabel.tabContentLink.getData()}"  role="tab" data-toggle="tab">
                                <p>${cur_tabLabel.getData()}</p>
                            </a>
                        </li>
                    </#list>
                </#if>
            </ul>
            <div class="tab-content">
                <#if tabLabel.getSiblings()?has_content>
                	<#list tabLabel.getSiblings() as cur_tabLabel>
                	    <#if cur_tabLabel_index == 1>
                            <#assign active="active">
                        <#else>
                            <#assign active="">
                        </#if>
                		<div role="tabpanel" class="tab-pane ${active}" id="${cur_tabLabel.tabContentLink.getData()}">
                            <div class="row">
                                <#if cur_tabLabel.careerLabel.getSiblings()?has_content>
                                	<#list cur_tabLabel.careerLabel.getSiblings() as cur_careerLabel>
                                		<div class="col-md-4">
                                            <a href="${cur_careerLabel.careerLink.getData()}">
                                                <div class="careers-blocks">
                                                    <h3>${cur_careerLabel.getData()}</h3>
                                                    <p><i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp;${cur_careerLabel.careerLocation.getData()}</p>
                                                </div>
                                            </a>
                                        </div>
                                	</#list>
                                </#if>
                            </div>
                        </div>
                	</#list>
                </#if>
            </div>
        </div>
    </div>
</div>