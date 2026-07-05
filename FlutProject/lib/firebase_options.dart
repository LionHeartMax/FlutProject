import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return web;
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyATkDwXYwdaBsHgAb3hpfFahrtGAyXlOu0',
    authDomain: 'flutproject-59a60.firebaseapp.com',
    projectId: 'flutproject-59a60',
    storageBucket: 'flutproject-59a60.firebasestorage.app',
    messagingSenderId: '116063681190',
    appId: '1:116063681190:web:2c6171fdb6acd40a48d267',
    measurementId: 'G-CEKP0RL247',
  );
}
