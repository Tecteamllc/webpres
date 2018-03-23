<div class="sidebar">
    <div class="staff">
        <h3>${heading.getData()}</h3>
        <hr class="short">
        <#if memberPhoto.getSiblings()?has_content>
        	<#list memberPhoto.getSiblings() as cur_memberPhoto>
            	<div class="media">
                  <div class="media-left">
                    <a href="${cur_memberPhoto.memberLink.getData()}">
                      <img class="media-object" src="${cur_memberPhoto.getData()}" alt="...">
                    </a>
                  </div>
                  <div class="media-body">
                    <h6 class="media-heading">${cur_memberPhoto.memberName.getData()}</h6>
                    <p class="profession">${cur_memberPhoto.memberProfession.getData()}</p>
                    <p><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;&nbsp; ${cur_memberPhoto.memberPhone.getData()}</p>
                    <p><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp; ${cur_memberPhoto.memberMail.getData()}</p>
                  </div>
                </div>
        	</#list>
        </#if>
    </div>
</div>