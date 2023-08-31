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
    apiKey: 'AIzaSyBHoZS4nUKlVFaN9pYhVVoD-m-I_QBqkMg',
    appId: '1:258468276697:web:647568b9d6c01fae3c91c8',
    messagingSenderId: '258468276697',
    projectId: 'book-spa',
    authDomain: 'book-spa.firebaseapp.com',
    storageBucket: 'book-spa.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDML-GFHaUTfBSIrusELi-Jp9THL8Nj7MI',
    appId: '1:258468276697:android:e6edf973cc7665613c91c8',
    messagingSenderId: '258468276697',
    projectId: 'book-spa',
    storageBucket: 'book-spa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnzSSOX-wwcB0oxZ8fIDKMDrvu5LdgCkQ',
    appId: '1:258468276697:ios:cc7b91914109a7453c91c8',
    messagingSenderId: '258468276697',
    projectId: 'book-spa',
    storageBucket: 'book-spa.appspot.com',
    iosClientId: '258468276697-heogfepjhk6plh3p2uvfn2v8gqptd9bi.apps.googleusercontent.com',
    iosBundleId: 'com.example.bookSpa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAnzSSOX-wwcB0oxZ8fIDKMDrvu5LdgCkQ',
    appId: '1:258468276697:ios:31ff4cdcdc61a6f73c91c8',
    messagingSenderId: '258468276697',
    projectId: 'book-spa',
    storageBucket: 'book-spa.appspot.com',
    iosClientId: '258468276697-q7tcq0b8nk17u97k3k4csjusvdrfo3uo.apps.googleusercontent.com',
    iosBundleId: 'com.example.bookSpa.RunnerTests',
  );
}