<div class="main counter-parallax" style="background-image:url('${backgroundImage.getData()}')">
    <div class="section">
        <div class="row">
            <#if counterTitle.getSiblings()?has_content>
                <#list counterTitle.getSiblings() as cur_counterTitle>
	                  <div class="col-sm-3 col-md-3">
                          <circle-counter>
                              <div class="counter-icon">
                                <i class="fa ${cur_counterTitle.iconClassName.getData()}" aria-hidden="true"></i>
                              </div>
                              <span class="counter circle">${cur_counterTitle.count.getData()}</span>
                              <h4>${cur_counterTitle.getData()}</h4>
                          </circle-counter>
                        </div>
                </#list>
            </#if>
        </div>
    </div>
</div>