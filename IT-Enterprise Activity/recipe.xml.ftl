<?xml version="1.0"?>
<recipe>

    <#if !(hasDependency('com.android.support:support-v4'))><dependency mavenUrl="com.android.support:support-v4:${targetApi}.+"/></#if>

	<#if isNewProject>
	<merge from="AndroidManifest.xml.ftl"
			 to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	<#else>		 
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	</#if>	

	<merge from="build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />	
		 
    <instantiate from="res/menu/main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />
	<#if isNewProject>
	<merge from="res/values/styles.xml.ftl"
			 to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
	</#if>

	<#if isNewProject>
	<instantiate from="res/menu/global.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/menu/global.xml" />
	<#else>	
	<merge from="res/menu/global.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/menu/global.xml" />	
	</#if>	

    <instantiate from="res/layout/activity_main.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <instantiate from="res/layout/fragment_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
				   
	<#if isNewProject>
	<instantiate from="src/app_package/Application.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${appClass}.java" />
	</#if>			   
    <instantiate from="src/app_package/MainActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</recipe>
