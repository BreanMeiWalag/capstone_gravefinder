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
    apiKey: 'AIzaSyDj4CLCJXX6odYokKyzTRcEuZdtfB4q16A',
    appId: '1:728123790416:web:2db3c875f882d00a016d55',
    messagingSenderId: '728123790416',
    projectId: 'gravefinder-project',
    authDomain: 'gravefinder-project.firebaseapp.com',
    storageBucket: 'gravefinder-project.appspot.com',
    measurementId: 'G-RJ0G8MF9JY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqwUGjYxjrF5ietLgkrhKBDOCU4uOPQ3M',
    appId: '1:728123790416:android:53e118805252239d016d55',
    messagingSenderId: '728123790416',
    projectId: 'gravefinder-project',
    storageBucket: 'gravefinder-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7l5dpxM93KVKTyurmA1ZI1CNJ3nbB20c',
    appId: '1:728123790416:ios:930473d4aa52a156016d55',
    messagingSenderId: '728123790416',
    projectId: 'gravefinder-project',
    storageBucket: 'gravefinder-project.appspot.com',
    iosBundleId: 'com.example.gravefinder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7l5dpxM93KVKTyurmA1ZI1CNJ3nbB20c',
    appId: '1:728123790416:ios:099b6c910af4aea8016d55',
    messagingSenderId: '728123790416',
    projectId: 'gravefinder-project',
    storageBucket: 'gravefinder-project.appspot.com',
    iosBundleId: 'com.example.gravefinder.RunnerTests',
  );
}
