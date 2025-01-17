// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAS3WaQWO8Ap6LgNTPEiM0CzPIJGRSbgCM',
    appId: '1:504253623584:android:32d8dab692b92560be7b45',
    messagingSenderId: '504253623584',
    projectId: 'sample-macos',
    storageBucket: 'sample-macos.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-ukXJAZjIloYOCTALZQYcAC5ksqyx9_U',
    appId: '1:504253623584:ios:7d25531df0d4d06bbe7b45',
    messagingSenderId: '504253623584',
    projectId: 'sample-macos',
    storageBucket: 'sample-macos.appspot.com',
    androidClientId: '504253623584-827mn7v9qfh0ohs0uljcq3otuqfhkshn.apps.googleusercontent.com',
    iosClientId: '504253623584-6lfetbsa4f89m5vbg7vp5kj0bh1h38ve.apps.googleusercontent.com',
    iosBundleId: 'com.example.macosSample',
  );
}
