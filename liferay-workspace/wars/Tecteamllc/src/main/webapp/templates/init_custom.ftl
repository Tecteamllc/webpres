<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

<#assign commonTopHeaderContentId = getterUtil.getString(themeDisplay.getThemeSetting("common-top-header-content-id"))>
<#assign footerTopContentId = getterUtil.getString(themeDisplay.getThemeSetting("footer-top-content-id"))>
<#assign mainFooterContentId = getterUtil.getString(themeDisplay.getThemeSetting("main-footer-content-id"))>
<#assign footerBottomContentId = getterUtil.getString(themeDisplay.getThemeSetting("footer-bottom-content-id"))>
<#assign show_breadcrumbs = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-breadcrumbs"))>
