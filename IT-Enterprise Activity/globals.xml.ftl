<?xml version="1.0"?>
<globals>
	<global id="projectOut" value="." />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="appCompat" type="boolean" value="false" />
    <global id="superClass" type="string" value="ActivityBase"/>
    <global id="superClassFqcn" type="string" value="com.it.core.activity.ActivityBase"/>
	<global id="appSuperClass" type="string" value="ApplicationBase"/>
    <global id="appSuperClassFqcn" type="string" value="com.it.core.application.ApplicationBase"/>
	<global id="appClass" type="string" value="Application"/>

    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <global id="Support" value="${(hasDependency('com.android.support:appcompat-v7'))?string('Support','')}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    <global id="menuName" value="${classToResource(activityClass)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
</globals>
