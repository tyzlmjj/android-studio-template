<?xml version="1.0"?>
<recipe>
    
    <instantiate from="res/layout/fragment.xml.flt"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutMvpName}_fragment.xml" />

<#if generateKotlin>
    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.kt" />
<#else>
    
    <instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.java" />

    <instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Contract.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${mvpName}Contract.java" />

    <instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Fragment.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${mvpName}Fragment.java" />

    <instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Presenter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${mvpName}Presenter.java" />

</#if>

  <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

<#if generateActivityTitle!true>
    <merge from="res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
</#if>

</recipe>