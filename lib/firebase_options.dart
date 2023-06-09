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
    apiKey: 'AIzaSyBeRzzQ1I1K3YJl7cogSepU1JyTNN4HTmI',
    appId: '1:532192140200:web:f893ea082e4daf66e35b9d',
    messagingSenderId: '532192140200',
    projectId: 'schoolwale-application',
    authDomain: 'schoolwale-application.firebaseapp.com',
    storageBucket: 'schoolwale-application.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwf-jOkFG1JmdSC7b4_IxvOmzjitBd0FA',
    appId: '1:532192140200:android:d2c8dc8955058fdae35b9d',
    messagingSenderId: '532192140200',
    projectId: 'schoolwale-application',
    storageBucket: 'schoolwale-application.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6wQhewbVzLVZ3eFcl8UvYWPXEjIsMA4I',
    appId: '1:532192140200:ios:5e84ec7f7b675c84e35b9d',
    messagingSenderId: '532192140200',
    projectId: 'schoolwale-application',
    storageBucket: 'schoolwale-application.appspot.com',
    iosClientId: '532192140200-bimda0m9iq2f13talhkbd7d404c0hglu.apps.googleusercontent.com',
    iosBundleId: 'com.example.schoolwale',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6wQhewbVzLVZ3eFcl8UvYWPXEjIsMA4I',
    appId: '1:532192140200:ios:5e84ec7f7b675c84e35b9d',
    messagingSenderId: '532192140200',
    projectId: 'schoolwale-application',
    storageBucket: 'schoolwale-application.appspot.com',
    iosClientId: '532192140200-bimda0m9iq2f13talhkbd7d404c0hglu.apps.googleusercontent.com',
    iosBundleId: 'com.example.schoolwale',
  );
}
