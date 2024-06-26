// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDT1xydwQ8F_z20umtGYchld0GGuQqpeFM',
    appId: '1:624309619141:web:b8843477b21b7950e423ac',
    messagingSenderId: '624309619141',
    projectId: 'notesapp-rusdy',
    authDomain: 'notesapp-rusdy.firebaseapp.com',
    storageBucket: 'notesapp-rusdy.appspot.com',
    measurementId: 'G-7S86JFG8Y0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNUxlJW1Z5-BGh1ZNMHRCLD_1n2r3wDLU',
    appId: '1:624309619141:android:2e7dc86ee89ed0fae423ac',
    messagingSenderId: '624309619141',
    projectId: 'notesapp-rusdy',
    storageBucket: 'notesapp-rusdy.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDujVoq3PZuwkoblSGFvfQKnFOGGS-rgTo',
    appId: '1:624309619141:ios:378574e3509f9d78e423ac',
    messagingSenderId: '624309619141',
    projectId: 'notesapp-rusdy',
    storageBucket: 'notesapp-rusdy.appspot.com',
    iosBundleId: 'com.example.notesapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDujVoq3PZuwkoblSGFvfQKnFOGGS-rgTo',
    appId: '1:624309619141:ios:378574e3509f9d78e423ac',
    messagingSenderId: '624309619141',
    projectId: 'notesapp-rusdy',
    storageBucket: 'notesapp-rusdy.appspot.com',
    iosBundleId: 'com.example.notesapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDT1xydwQ8F_z20umtGYchld0GGuQqpeFM',
    appId: '1:624309619141:web:9c89a16efcef91ade423ac',
    messagingSenderId: '624309619141',
    projectId: 'notesapp-rusdy',
    authDomain: 'notesapp-rusdy.firebaseapp.com',
    storageBucket: 'notesapp-rusdy.appspot.com',
    measurementId: 'G-8ZZ6C94XKE',
  );
}
