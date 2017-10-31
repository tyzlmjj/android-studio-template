<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <activity android:name="${packageName}.${mvpName}Activity"
            <#if generateActivityTitle!true>
                android:label="@string/title_activity_${layoutMvpName}"
            </#if>
            />
    </application>
</manifest>
