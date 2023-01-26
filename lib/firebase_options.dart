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
    apiKey: 'AIzaSyDHJoIXyJRKXN6WlKbmwiMT9jQoUP5LIc8',
    appId: '1:1037750001821:web:03e96058dc538ed607f474',
    messagingSenderId: '1037750001821',
    projectId: 'phone-send-otp',
    authDomain: 'phone-send-otp.firebaseapp.com',
    storageBucket: 'phone-send-otp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBS2mm4LfgTMXklDp8KOBsngCA5SXHOS0E',
    appId: '1:1037750001821:android:f18c74cce16a262807f474',
    messagingSenderId: '1037750001821',
    projectId: 'phone-send-otp',
    storageBucket: 'phone-send-otp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBu8PPYBi0A9sj2yjpzDfnxvEe0rVa9Ur0',
    appId: '1:1037750001821:ios:e4f709ae625d408307f474',
    messagingSenderId: '1037750001821',
    projectId: 'phone-send-otp',
    storageBucket: 'phone-send-otp.appspot.com',
    iosClientId: '1037750001821-g66bd91diuc1km7vbiliueu87hsgp1qn.apps.googleusercontent.com',
    iosBundleId: 'com.example.widgetFunction',
  );
}