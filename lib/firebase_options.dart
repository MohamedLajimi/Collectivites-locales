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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCOX2cbFX_O17ldxsVH_UdzZbHrw33la3Y',
    appId: '1:364697297130:web:6941705305b802ed547793',
    messagingSenderId: '364697297130',
    projectId: 'hackathon-project-f74f4',
    authDomain: 'hackathon-project-f74f4.firebaseapp.com',
    storageBucket: 'hackathon-project-f74f4.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuKeVqHrpMVmPymVK39rdRpUsbEeYsLFU',
    appId: '1:364697297130:android:9d345f02dd833071547793',
    messagingSenderId: '364697297130',
    projectId: 'hackathon-project-f74f4',
    storageBucket: 'hackathon-project-f74f4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC69nJ-RWQjP6mpr4GIp0_OvoOCrnFqN6k',
    appId: '1:364697297130:ios:0b4f053e1dbfe5b3547793',
    messagingSenderId: '364697297130',
    projectId: 'hackathon-project-f74f4',
    storageBucket: 'hackathon-project-f74f4.firebasestorage.app',
    iosBundleId: 'com.example.hacka',
  );
}
