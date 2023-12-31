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
    apiKey: 'AIzaSyBBo-Yy03dvVJAHD7KHGzg8_1tpG6AmOiw',
    appId: '1:1064517537901:web:8a7c84243d207ff625af64',
    messagingSenderId: '1064517537901',
    projectId: 'xchirag-1d54d',
    authDomain: 'xchirag-1d54d.firebaseapp.com',
    storageBucket: 'xchirag-1d54d.appspot.com',
    measurementId: 'G-5K1F9CKG61',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmDA6aVbGRMd6TPNbZjoJamnM-q1yQuBc',
    appId: '1:1064517537901:android:2726157e31a70fc025af64',
    messagingSenderId: '1064517537901',
    projectId: 'xchirag-1d54d',
    storageBucket: 'xchirag-1d54d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHAWc1PnXLo0fePqx1CVVVKAhYmFl50MY',
    appId: '1:1064517537901:ios:8a66121461deb3eb25af64',
    messagingSenderId: '1064517537901',
    projectId: 'xchirag-1d54d',
    storageBucket: 'xchirag-1d54d.appspot.com',
    iosClientId: '1064517537901-5gb3cl0c5jjjeue9anc41fpftlh3vu8g.apps.googleusercontent.com',
    iosBundleId: 'com.example.personal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHAWc1PnXLo0fePqx1CVVVKAhYmFl50MY',
    appId: '1:1064517537901:ios:5ca427eb4798e2c325af64',
    messagingSenderId: '1064517537901',
    projectId: 'xchirag-1d54d',
    storageBucket: 'xchirag-1d54d.appspot.com',
    iosClientId: '1064517537901-vbjp96usms1qmmcdo50j49dc6664s5i0.apps.googleusercontent.com',
    iosBundleId: 'com.example.personal.RunnerTests',
  );
}
