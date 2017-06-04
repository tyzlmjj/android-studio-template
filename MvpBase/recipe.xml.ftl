<?xml version="1.0"?>
<recipe>
    
<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>

    <merge from="res/values/appbar_themes.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <instantiate from="res/layout/layout_framelayout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/layout_framelayout.xml" />

    <instantiate from="res/layout/layout_toolbar.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/layout_toolbar.xml" />

    <instantiate from="src/app_package/BaseActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/BaseActivity.java" />

    <instantiate from="src/app_package/BaseMVPActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/BaseMVPActivity.java" />

	  <instantiate from="src/app_package/BaseMVPFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/BaseMVPFragment.java" />

    <instantiate from="src/app_package/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/BasePresenter.java" />

    <instantiate from="src/app_package/BasePresenterImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/BasePresenterImpl.java" />

    <instantiate from="src/app_package/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/BaseView.java" />

    <instantiate from="src/app_package/ToastHelper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/helper/ToastHelper.java" />

    
</recipe>