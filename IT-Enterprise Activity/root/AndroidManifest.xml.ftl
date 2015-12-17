<manifest xmlns:android="http://schemas.android.com/apk/res/android"
		xmlns:tools="http://schemas.android.com/tools"  >

	<uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
	<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
	<uses-permission android:name="android.permission.INTERNET" />
	<uses-permission android:name="android.permission.USE_CREDENTIALS" />

    <application
		<#if isNewProject>
		android:name=".${appClass}"
		</#if> >
		<activity android:name="${relativePackage}.${activityClass}"
			<#if isNewProject>
			android:label="@string/app_name"
            <#else>
            android:label="@string/title_${activityToLayout(activityClass)}"
            </#if>
			android:configChanges="keyboard|keyboardHidden|orientation|screenSize"
            android:windowSoftInputMode="stateHidden"
            <#if buildApi gte 16 && parentActivityClass != "">android:parentActivityName="${parentActivityClass}"</#if>>
            <#if parentActivityClass != "">
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${parentActivityClass}" />
            </#if>
            <#if isLauncher>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            </#if>
        </activity>
		<activity
		    android:name="com.it.core.activity.LoginActivity"
		    android:label="@string/title_activity_login"
		    android:logo="@drawable/ic_launcher"
		    android:windowSoftInputMode="adjustResize|stateVisible" >
	    </activity>
	    <activity
		    android:name="com.it.core.activity.NoConnectionToApplicationServerActivity"
			android:label="@string/app_name" >
	    </activity>
	    <activity
		    android:name="com.it.core.activity.SettingsActivityBase"
			android:logo="@drawable/ic_launcher"
		    android:label="@string/settings" >
	    </activity>
	    <activity
		    android:name="com.it.core.activity.ChangePasswordActivity"
			android:label="@string/change_password"
		    android:logo="@drawable/ic_launcher" >
	    </activity>
    </application>
</manifest>