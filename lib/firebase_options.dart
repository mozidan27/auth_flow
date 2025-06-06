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
    apiKey: 'AIzaSyBBxRgft22gzZRAiltR85Si32lgjBk_Dyc',
    appId: '1:1042467878809:web:c61a4bf4e56f814a2fc508',
    messagingSenderId: '1042467878809',
    projectId: 'auth-flow-1264c',
    authDomain: 'auth-flow-1264c.firebaseapp.com',
    storageBucket: 'auth-flow-1264c.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuMWmEurKJ1q7Y02526ho3M6CmejFGoRs',
    appId: '1:1042467878809:android:9abc6b0e8b89a5622fc508',
    messagingSenderId: '1042467878809',
    projectId: 'auth-flow-1264c',
    storageBucket: 'auth-flow-1264c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzbFJT9r4WW91OJTum8N6ibda8JiYkuUU',
    appId: '1:1042467878809:ios:e1bbc0d769b24cb12fc508',
    messagingSenderId: '1042467878809',
    projectId: 'auth-flow-1264c',
    storageBucket: 'auth-flow-1264c.firebasestorage.app',
    iosClientId: '1042467878809-un3nk566asabphagrvjju184pee8opr9.apps.googleusercontent.com',
    iosBundleId: 'com.example.authFlow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzbFJT9r4WW91OJTum8N6ibda8JiYkuUU',
    appId: '1:1042467878809:ios:e1bbc0d769b24cb12fc508',
    messagingSenderId: '1042467878809',
    projectId: 'auth-flow-1264c',
    storageBucket: 'auth-flow-1264c.firebasestorage.app',
    iosClientId: '1042467878809-un3nk566asabphagrvjju184pee8opr9.apps.googleusercontent.com',
    iosBundleId: 'com.example.authFlow',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBBxRgft22gzZRAiltR85Si32lgjBk_Dyc',
    appId: '1:1042467878809:web:d3c903806ba933d62fc508',
    messagingSenderId: '1042467878809',
    projectId: 'auth-flow-1264c',
    authDomain: 'auth-flow-1264c.firebaseapp.com',
    storageBucket: 'auth-flow-1264c.firebasestorage.app',
  );
}
