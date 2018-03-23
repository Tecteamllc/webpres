<div class="main">
    <div class="section">
        <h2>${heading.getData()}</h2>
        <hr class="center">
        <div class="row">
            <#if teamHeadAvtar.getSiblings()?has_content>
    	        <#list teamHeadAvtar.getSiblings() as cur_teamHeadAvtar>
                  <div class="col-sm-6 col-md-4">
                    <div class="team-headshot">
                      <img src="${cur_teamHeadAvtar.getData()}" alt="...">
                      <div class="caption">
                        <h3>${cur_teamHeadAvtar.teamHeadName.getData()}</h3>
                        <p>${cur_teamHeadAvtar.teamHeadProfession.getData()}</p>
                      </div>
                      <div class="span-social">
                        <#if teamHeadAvtar.socialIcon.getSiblings()?has_content>
        	                <#list teamHeadAvtar.socialIcon.getSiblings() as cur_socialIcon>
                                <div class="employee-social">
                                    <a href="${cur_socialIcon.socialLink.getData()}" class="fa ${cur_socialIcon.getData()}"></a>               
								</div>
                            </#list>
                        </#if>
                      </div>
                    </div>
                  </div>
              </#list>
            </#if>
        </div>
    </div>
</div>