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
    apiKey: 'AIzaSyD4PG3k1Z442SnIOmTy6ZQma1kQ1wj9o7o',
    appId: '1:866833860406:web:ce9cf625a7832c43815597',
    messagingSenderId: '866833860406',
    projectId: 'attendanceapp-c7161',
    authDomain: 'attendanceapp-c7161.firebaseapp.com',
    storageBucket: 'attendanceapp-c7161.appspot.com',
    measurementId: 'G-LVG6TNPC8N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_3Z2GBIwMTBOnsPw1N6GoDT_t-1Rq6sQ',
    appId: '1:866833860406:android:a2a54446bef35e20815597',
    messagingSenderId: '866833860406',
    projectId: 'attendanceapp-c7161',
    storageBucket: 'attendanceapp-c7161.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnW4t__nbGKy_1uWKD9MkP_vbOq02hgBQ',
    appId: '1:866833860406:ios:dc20e9fc05ee17ea815597',
    messagingSenderId: '866833860406',
    projectId: 'attendanceapp-c7161',
    storageBucket: 'attendanceapp-c7161.appspot.com',
    iosBundleId: 'com.example.attendenceapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnW4t__nbGKy_1uWKD9MkP_vbOq02hgBQ',
    appId: '1:866833860406:ios:dc20e9fc05ee17ea815597',
    messagingSenderId: '866833860406',
    projectId: 'attendanceapp-c7161',
    storageBucket: 'attendanceapp-c7161.appspot.com',
    iosBundleId: 'com.example.attendenceapp',
  );
}