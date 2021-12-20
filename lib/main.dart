import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flashchat/screens/welcome_screen.dart';
import 'package:flashchat/screens/login_screen.dart';
import 'package:flashchat/screens/registration_screen.dart';
import 'package:flashchat/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:WelcomeScreen.id,
      routes: {
        ChatScreen.id : (context)=> const ChatScreen(),
        LoginScreen.id: (context)=> const LoginScreen(),
        RegistrationScreen.id:(context)=> const  RegistrationScreen(),
        WelcomeScreen.id: (context)=> const WelcomeScreen(),
        },
    );
  }
}
