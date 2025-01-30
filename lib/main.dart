import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/resgister_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
// Replace with actual values
      options: const FirebaseOptions(
    apiKey: 'AIzaSyAWwJ7dyzNXlITmu_p8Z7dwkAynWFpxdu4',
    appId: '1:184993023076:ios:008df4ad7c90a12ce98b71',
    messagingSenderId: '184993023076',
    projectId: 'chat-app-b0c25',
  ));
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        ChatPage.id: (context) => ChatPage(),
      },
      initialRoute:(getEmail()!=null)? ChatPage.id :LoginPage.id,
    );
  }
}
