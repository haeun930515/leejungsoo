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
    apiKey: 'AIzaSyC6lxzErAvcwW1kDkKyMDZ6hONt16xS0IE',
    appId: '1:30998161537:web:c142764246007a84cc8580',
    messagingSenderId: '30998161537',
    projectId: 'leejungsoo-3b087',
    authDomain: 'leejungsoo-3b087.firebaseapp.com',
    storageBucket: 'leejungsoo-3b087.appspot.com',
    measurementId: 'G-GYPFQJK0GM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoYRdVYLSnaHErh6YtWGPGU4O8S3Sx8CY',
    appId: '1:30998161537:android:8b243fb998dda220cc8580',
    messagingSenderId: '30998161537',
    projectId: 'leejungsoo-3b087',
    storageBucket: 'leejungsoo-3b087.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBYHULP5lucOc_jpvMUvHKxqWly-gJxgbI',
    appId: '1:30998161537:ios:4028db16a9fc76eecc8580',
    messagingSenderId: '30998161537',
    projectId: 'leejungsoo-3b087',
    storageBucket: 'leejungsoo-3b087.appspot.com',
    iosClientId:
        '30998161537-iernjan8cd08h01qtp1b99n2fmilgsm4.apps.googleusercontent.com',
    iosBundleId: 'com.example.leejungsoo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBYHULP5lucOc_jpvMUvHKxqWly-gJxgbI',
    appId: '1:30998161537:ios:4028db16a9fc76eecc8580',
    messagingSenderId: '30998161537',
    projectId: 'leejungsoo-3b087',
    storageBucket: 'leejungsoo-3b087.appspot.com',
    iosClientId:
        '30998161537-iernjan8cd08h01qtp1b99n2fmilgsm4.apps.googleusercontent.com',
    iosBundleId: 'com.example.leejungsoo',
  );
}
