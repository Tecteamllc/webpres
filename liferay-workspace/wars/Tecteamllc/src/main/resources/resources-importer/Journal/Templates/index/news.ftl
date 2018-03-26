<div class="main">
    <div class="section">
        <div class="block-title">
            <h2>${sectionTitle.getData()}</h2>
            <hr class="center">
            <p>${description.getData()}</p>
        </div>
        <div class="row">
        <#if postTitle.getSiblings()?has_content>
	        <#list postTitle.getSiblings() as cur_postTitle>
              <div class="col-md-4">
                <div class="news-front">
                  <div class="front-post-preview">
                    <img src="${cur_postTitle.postImage.getData()}" alt="...">
                      <div class="post-date">
                      <#assign postDate = dateUtil.parseDate("yyyy-MM-dd", getterUtil.getString(cur_postTitle.postDate.getData()), locale)>
                      <h5>${dateUtil.getDate(postDate, "MMM", locale)} <span>${dateUtil.getDate(postDate, "dd", locale)}</span></h5>
                      </div>
                  </div>
                  <div class="caption">
                    <h3>${cur_postTitle.getData()}</h3>
                    <p>${cur_postTitle.postDescription.getData()}</p>
                    <p><a href="${cur_postTitle.postDescription.getData()}" class="btn btn-warning" role="button">READ MORE</a></p>
                  </div>
                </div>
              </div>
          </#list>
        </#if>
        </div>
    </div>
</div>
