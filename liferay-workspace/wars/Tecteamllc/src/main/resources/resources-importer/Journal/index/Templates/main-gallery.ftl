<div class="main">
    <div class="section">
        <div class="main-gallery">
            <#if backgroundImage.getSiblings()?has_content>
	            <#list backgroundImage.getSiblings() as cur_backgroundImage>
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
                </#list>
            </#if>
        </div>
    </div>
</div>