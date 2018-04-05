<div class="top-header">
	<div class="container content-top">
		<div class="leftside">
			<div class="header-items">
				<p><i class="${AddressIcon.getData()}" aria-hidden="true"></i>
				&nbsp;${ShortAddress.getData()}
				</p>
			</div>
			<div class="header-items">
			     <a href="mailto:${EmailAddress.getData()}">
				    <p><i class="${EmailAddressIcon.getData()}" aria-hidden="true"></i>&nbsp; ${EmailAddress.getData()}</p>
				 </a>
			</div>
			<div class="header-items">
			    <a href="tel:${PhoneNumber.getData()}">
				    <p><i class="${PhoneIcon.getData()}" aria-hidden="true"></i>&nbsp; ${PhoneNumber.getData()}</p>
				</a>
			</div>
		</div>
		<div class="rightside">
		    <#if SocialMedia.getSiblings()?has_content>
            	<#list SocialMedia.getSiblings() as cur_SocialMedia>
            	    <div class="header-items">
        				<a href="${cur_SocialMedia.Url.getData()}">
        					<p><i class="${cur_SocialMedia.SocialMediaIcon.getData()}" aria-hidden="true"></i></p>
        				</a>
        			</div>
            	</#list>
            </#if>
		</div>
	</div>
</div>