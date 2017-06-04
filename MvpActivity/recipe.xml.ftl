<?xml version="1.0"?>
<recipe>
    
    <instantiate from="res/layout/fragment.xml.flt"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutMvpName}_fragment.xml" />

    <instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Activity.java" />

    <instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Contract.java" />

	  <instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Fragment.java" />

    <instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpName}Presenter.java" />

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

</recipe>