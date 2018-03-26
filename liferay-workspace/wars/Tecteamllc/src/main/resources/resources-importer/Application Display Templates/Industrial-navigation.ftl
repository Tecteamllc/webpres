<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <ul class="nav navbar-nav navbar-right">
    <#if entries?has_content>
    	<#list entries as navigationEntry>
        	<#if navigationEntry.hasChildren()>
            	<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${navigationEntry.getName()} <span class="caret-drop"></span></a>
                <ul class="dropdown-menu">
                    <#list navigationEntry.getChildren() as nav_child>
                        <#if nav_child_index == 0>
                            <li class="divider-top"></li>
                        <#else>
                            <li class="divider"></li>
                        </#if>
                        <li><a href="${nav_child.getURL()}">${nav_child.getName()}</a></li>
                    </#list>
                </ul>
        	<#else>
        	    <li><a href="${navigationEntry.getURL()}">${navigationEntry.getName()}</a></li>	
        	</#if>
    	</#list>
    </#if>
  </ul>
</div>