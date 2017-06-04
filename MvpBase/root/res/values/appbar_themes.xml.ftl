<resources>
    <#if !themeExistsAppBarOverlay>
        <style name="${themeNameAppBarOverlay}" parent="ThemeOverlay.AppCompat.Dark.ActionBar" />
    </#if>
    <#if !themeExistsPopupOverlay>
        <style name="${themeNamePopupOverlay}" parent="ThemeOverlay.AppCompat.Light" />
    </#if>
</resources>
