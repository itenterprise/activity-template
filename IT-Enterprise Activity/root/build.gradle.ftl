android {
    packagingOptions {
        exclude 'META-INF/LICENSE'
        exclude 'META-INF/NOTICE'
    }
}

dependencies {
	compile project(':core')
    compile 'com.android.support:appcompat-v7:21.0.2'
}
