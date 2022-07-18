pushd android
    # flutter build generates files in android/ for building the app
    flutter build apk
    ./gradlew app:assembleAndroidTest
    ./gradlew app:assembleDebug -Ptarget=integration_test/../integration_test/sample_test.dart
popd