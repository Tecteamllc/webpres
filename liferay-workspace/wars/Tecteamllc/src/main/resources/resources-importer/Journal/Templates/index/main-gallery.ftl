<div class="main">
    <div class="section">
        <div class="main-gallery">
            <div id="testimonials" class=" testimonials carousel slide" data-wrap="true" data-interval="5000" data-ride="carousel">
                <!-- Carousel indicators -->
                <ol class="carousel-indicators">
                    <#if backgroundImage.getSiblings()?has_content>
                    	<#list backgroundImage.getSiblings() as cur_backgroundImage>
                        	<#if cur_backgroundImage_index == 0>
                        	    <#assign active= "active"/>
                        	<#else>
                        	    <#assign active= ""/>
                        	</#if>
                    		<li data-target="#testimonials" data-slide-to="${cur_backgroundImage_index}" class="${active}"></li>
                    	</#list>
                    </#if>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <#if backgroundImage.getSiblings()?has_content>
        	            <#list backgroundImage.getSiblings() as cur_backgroundImage>
        	            <#if cur_backgroundImage_index == 0>
                    	    <#assign active= "active"/>
                    	<#else>
                    	    <#assign active= ""/>
                    	</#if>
                        <div class="item ${active}">
                            <div class="gallery-cell">
                               <div class="testimonial-section">
                                    <div class="avatar">
                                        <img src="${cur_backgroundImage.getData()}" alt="">
                                    </div>
                                    <div class="testimonial-quote">
                                       <p>${cur_backgroundImage.subTitle.getData()}</p>
                                    </div>
                                    <div class="autor">
                                        <h5>${cur_backgroundImage.mainTitle.getData()}</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </#list>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</div>
