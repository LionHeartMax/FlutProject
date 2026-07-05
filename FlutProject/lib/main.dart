import 'dart:html';
import 'package:click_/views/login_view.dart';
import 'package:click_/views/register_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    ),
    home: const HomePage(),
    routes: {
      '/login/': (context) => LoginView(),
      '/register/': (context) => RegisterView(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            /*final user = FirebaseAuth.instance.currentUser;
              if (user?.emailVerified ?? false) {
                return const Text("Done");
              } else {
                return const VerifyEmailView();
              }*/
            return LoginView();
          default:
            return const Text("Loading...");
        }
      },
    );
  }
}
