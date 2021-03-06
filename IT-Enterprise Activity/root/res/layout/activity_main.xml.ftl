<android.support.v4.widget.DrawerLayout
	xmlns:android="http://schemas.android.com/apk/res/android"
	xmlns:tools="http://schemas.android.com/tools"
	android:layout_width="match_parent"
	android:layout_height="match_parent"
	android:id="@+id/drawer_layout"
	tools:context="${relativePackage}.${activityClass}">

	<FrameLayout
		android:id="@+id/container"
		android:layout_width="match_parent"
		android:layout_height="match_parent" />

	<!-- The navigation drawer -->
	<FrameLayout
		android:id="@+id/navigation_drawer"
		android:layout_width="@dimen/navigation_drawer_width"
		android:layout_height="match_parent"
		android:layout_gravity="left"
		android:name="com.it.core.menu.NavigationDrawerFragment"
		tools:layout="@layout/fragment_navigation_drawer" />
</android.support.v4.widget.DrawerLayout>