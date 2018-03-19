<div class="parallax" style="background-image:url('${backgroundImage.getData()}')">
	<div class="section">
		<div class="row">
		<#if frontServiceTitle.getSiblings()?has_content>
	        <#list frontServiceTitle.getSiblings() as cur_frontServiceTitle>
    		  <div class="col-md-4">
    			<div class="front-service">
    			  	<div class="service-icon">
    			  	    <img src="${cur_frontServiceTitle.frontServiceIcon.getData()}" alt="">
    			  	</div>
    				<h5>${cur_frontServiceTitle.getData()}</h5>
    				<p>${cur_frontServiceTitle.frontServiceDescription.getData()}</p>
    			</div>
    		  </div>
		    </#list>
        </#if>
		</div>
	</div>
</div>