<div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <#if backgroundImage.getSiblings()?has_content>
        	<#list backgroundImage.getSiblings() as cur_backgroundImage>
            	<#if cur_backgroundImage_index == 0>
            	    <#assign active= "active"/>
            	<#else>
            	    <#assign active= ""/>
            	</#if>
        		<li data-target="#myCarousel" data-slide-to="${cur_backgroundImage_index}" class="${active}"></li>
        	</#list>
        </#if>
    </ol>

    <!-- Wrapper for Slides -->
    <div class="carousel-inner">
        <#if backgroundImage.getSiblings()?has_content>
        	<#list backgroundImage.getSiblings() as cur_backgroundImage>
        	    <#if cur_backgroundImage_index == 0>
            	    <#assign active= "active"/>
            	<#else>
            	    <#assign active= ""/>
            	</#if>
                <div class="item ${active}">
                    <!-- Set the first background image using inline CSS below. -->
                    <div class="fill" style="background-image:url('${cur_backgroundImage.getData()}');"></div>
                    <div class="carousel-caption">
                        <#if cur_backgroundImage.mainTitle?has_content>
                             <h1 class="animated fadeInLeft">${cur_backgroundImage.mainTitle.getData()}</h1>
                        </#if>
                        <#if cur_backgroundImage.subTitle?has_content>
                            <p class="animated fadeInUp">${cur_backgroundImage.subTitle.getData()}</p>
                        </#if>
                        <#if cur_backgroundImage.buttonLabel?has_content>
                             <p class="animated fadeInUp">
                                <a href="${cur_backgroundImage.buttonLabel.buttonLink.getData()}" class="btn btn-transparent btn-rounded btn-large">${cur_backgroundImage.buttonLabel.getData()}</a>
                            </p>
                        </#if>
                    </div>
                </div>
            </#list>
        </#if>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>