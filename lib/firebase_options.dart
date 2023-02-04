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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA-0YLbl3f5fZwuNXuWMrrq_H8ELwkJPSo',
    appId: '1:1062604490379:web:0df8d93b96181abf83f68e',
    messagingSenderId: '1062604490379',
    projectId: 'farsamo-7455d',
    authDomain: 'farsamo-7455d.firebaseapp.com',
    storageBucket: 'farsamo-7455d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlR-M8dwwDHRHJ7bU1fcyXjZrSVS0uOws',
    appId: '1:1062604490379:android:18608b12acd89f1a83f68e',
    messagingSenderId: '1062604490379',
    projectId: 'farsamo-7455d',
    storageBucket: 'farsamo-7455d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADv2S8_Uejfh242FwPix-vsszu52WaO1s',
    appId: '1:1062604490379:ios:99ab9bf63464c9a283f68e',
    messagingSenderId: '1062604490379',
    projectId: 'farsamo-7455d',
    storageBucket: 'farsamo-7455d.appspot.com',
    iosClientId: '1062604490379-q7p0p00t40t6auvmrf9h20cml2qjqb6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.eau1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADv2S8_Uejfh242FwPix-vsszu52WaO1s',
    appId: '1:1062604490379:ios:99ab9bf63464c9a283f68e',
    messagingSenderId: '1062604490379',
    projectId: 'farsamo-7455d',
    storageBucket: 'farsamo-7455d.appspot.com',
    iosClientId: '1062604490379-q7p0p00t40t6auvmrf9h20cml2qjqb6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.eau1',
  );
}
