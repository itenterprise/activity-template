package ${packageName};

import ${appSuperClassFqcn};

public class ${appClass} extends ${appSuperClass} {

	@Override
	public void onCreate() {
		super.onCreate();
	}

	@Override
	public Class<?> getMainActivityClass() {
		return ${activityClass}.class;
	}

	@Override
	public String getDefaultPackage() {
		return "${packageName}";
	}
}
