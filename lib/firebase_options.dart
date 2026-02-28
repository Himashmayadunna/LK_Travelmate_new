import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for the current platform.
/// Derived from google-services.json.
///
/// To regenerate, run: `flutterfire configure`
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for iOS - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macOS - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXew8solJQ4vPhXWNOvaWDaUYdKDN5phQ',
    appId: '1:700359894258:android:c39ded849394af9d6e5c6b',
    messagingSenderId: '700359894258',
    projectId: 'lktravelmate',
    storageBucket: 'lktravelmate.firebasestorage.app',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBLFFCQFsPMLPyBXn8euk_lsuDzdIJKtKk',
    appId: '1:700359894258:web:158221ee478c4f646e5c6b',
    messagingSenderId: '700359894258',
    projectId: 'lktravelmate',
    authDomain: 'lktravelmate.firebaseapp.com',
    storageBucket: 'lktravelmate.firebasestorage.app',
    measurementId: 'G-HFDHCV7EQD',
  );
}