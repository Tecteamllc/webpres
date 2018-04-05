<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<#-- ============ Title and Meta Tags ========== -->
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Quickdev">

		<#-- ================= Favicon ================= -->  
        <link rel="shortcut icon" href="${images_folder}/favicon.png">

        <#-- ================= Fonts =================== -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
		<link href="https://fonts.googleapis.com/css?family=Oswald|Roboto+Condensed|Archivo+Narrow" rel="stylesheet">
</head>

<body class="${css_class}">
<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />
<div class="body-wrapper">
	<!-- LOADER -->
	<div id="loader-wrapper">
	<div id="loader"></div>
	</div>
	<!-- LOADER -->

	<@liferay.control_menu />
	<!-- MAIN CONTAINER -->
	<div class="wrapper">
		<!-- MAIN HEADER -->
		<#assign header_class="pages-header"/>
		<#if nav_items[0].isSelected()>
			<#assign header_class="main-header"/>
		</#if>
		
		<!-- MAIN NAVBAR -->
		<div class="main-navbar">
			<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">

				<#if commonTopHeaderContentId != "" >
					${freeMarkerPortletPreferences.reset()}
					<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
					<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
					<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", commonTopHeaderContentId?string) />
					<@liferay_portlet["runtime"]
						defaultPreferences="${freeMarkerPortletPreferences}"
						portletProviderAction=portletProviderAction.VIEW
						instanceId="common_top_header"
						portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
						${freeMarkerPortletPreferences.reset()}
				</#if>

				<hr class="top">
				<div class="container">
					<div class="navbar-header" >
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="${site_default_url}">
							<div class="logo-brand">
								<img src="${site_logo}" alt="logo">
							</div>
						</a>
					</div>

					<#if has_navigation && is_setup_complete>
						<#include "${full_templates_path}/navigation.ftl" />
					</#if>
				</div>
			</nav>
		</div><!-- END MAIN NAVBAR -->

		<section id="content">
			<h1 class="hide-accessible">${the_title}</h1>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>
	</div>
	<div class="main-footer">
		<div class="main">
			<div class="content">
				<div class="section">
					<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
					<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
					<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", footerTopContentId?string) />
					<@liferay_portlet["runtime"]
						defaultPreferences="${freeMarkerPortletPreferences}"
						portletProviderAction=portletProviderAction.VIEW
						instanceId="tp_footer"
						portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
						${freeMarkerPortletPreferences.reset()}
		
					<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
					<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
					<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", mainFooterContentId?string) />
					<@liferay_portlet["runtime"]
						defaultPreferences="${freeMarkerPortletPreferences}"
						portletProviderAction=portletProviderAction.VIEW
						instanceId="main_footer"
						portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
						${freeMarkerPortletPreferences.reset()}
				</div>
			</div>
		</div>
	</div>

	<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")/>
	<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
	<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", footerBottomContentId?string)>

    <@liferay_portlet["runtime"]
		defaultPreferences="${freeMarkerPortletPreferences}"
		portletProviderAction=portletProviderAction.VIEW
		instanceId="btm_footer"
		portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
		${freeMarkerPortletPreferences.reset()}

    <a href="#0" class="cd-top">Top</a>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

	<script src="${javascript_folder}/top.js"></script>
    <script src="${javascript_folder}/jquery.counterup.js"></script>
    <script src="${javascript_folder}/counter.js"></script>
    <script src="${javascript_folder}/jquery.waypoints.min.js"></script>    
    <script src="${javascript_folder}/contact.js"></script>
    <script src="${javascript_folder}/validator.js"></script>
    <script src="${javascript_folder}/navbar.js"></script>
    <script src="${javascript_folder}/accordion.js"></script>
    <script src="${javascript_folder}/filters.js"></script>
    <script src="${javascript_folder}/maps-style.js"></script>
    <script src="${javascript_folder}/loader.js"></script>

   <#-- =============== SCRIPTS ================== -->

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
      ga('create', 'UA-101241150-1', 'auto');
      ga('send', 'pageview');
    </script>
    
</body>

</html>
