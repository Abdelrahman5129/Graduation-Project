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
    apiKey: 'AIzaSyCvj_dRHCSetUFYRrXMaBtcB1GHmf9Ich4',
    appId: '1:126352083066:web:99c595779909e9a8e113c3',
    messagingSenderId: '126352083066',
    projectId: 'grad-bba94',
    authDomain: 'grad-bba94.firebaseapp.com',
    databaseURL: 'https://grad-bba94-default-rtdb.firebaseio.com',
    storageBucket: 'grad-bba94.appspot.com',
    measurementId: 'G-RSBX59PVDJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3zhJfCH3zhSegPgXj7mPv5x9J-K5zxnU',
    appId: '1:126352083066:android:1f7375b0c25ec613e113c3',
    messagingSenderId: '126352083066',
    projectId: 'grad-bba94',
    databaseURL: 'https://grad-bba94-default-rtdb.firebaseio.com',
    storageBucket: 'grad-bba94.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrQ1Fwn9NJM0AeH_tRnPDnKUqBcfRDQDc',
    appId: '1:126352083066:ios:8daff2b7f9c1dd27e113c3',
    messagingSenderId: '126352083066',
    projectId: 'grad-bba94',
    databaseURL: 'https://grad-bba94-default-rtdb.firebaseio.com',
    storageBucket: 'grad-bba94.appspot.com',
    iosBundleId: 'com.example.tree',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrQ1Fwn9NJM0AeH_tRnPDnKUqBcfRDQDc',
    appId: '1:126352083066:ios:8daff2b7f9c1dd27e113c3',
    messagingSenderId: '126352083066',
    projectId: 'grad-bba94',
    databaseURL: 'https://grad-bba94-default-rtdb.firebaseio.com',
    storageBucket: 'grad-bba94.appspot.com',
    iosBundleId: 'com.example.tree',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCvj_dRHCSetUFYRrXMaBtcB1GHmf9Ich4',
    appId: '1:126352083066:web:82deb4dcca31c489e113c3',
    messagingSenderId: '126352083066',
    projectId: 'grad-bba94',
    authDomain: 'grad-bba94.firebaseapp.com',
    databaseURL: 'https://grad-bba94-default-rtdb.firebaseio.com',
    storageBucket: 'grad-bba94.appspot.com',
    measurementId: 'G-99EGEP1CL8',
  );
}
