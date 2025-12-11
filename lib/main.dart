import 'package:chat_app_project/firebase_options.dart';
import 'package:chat_app_project/views/chat.view.dart';
import 'package:chat_app_project/views/home_view.dart';
import 'package:chat_app_project/views/resgister_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main ()async{
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomeView.id:(context) =>HomeView(),
     ResgisterView.id:(context)=>ResgisterView(),
     Chatview.id :(context)=>Chatview(),
     },
      initialRoute: HomeView.id,
    );
  }
}