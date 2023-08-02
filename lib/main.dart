// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:personal/screens/homeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'Widgets/generalWrapper.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: baseLayout(title: "Welcome Page", screen : const welcomeScreen(),)),
    //   
    //   title: '0xChirag.crypto',
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.blue,
          secondary: Colors.black,
        ),
        useMaterial3: true,
      ),
    //   home: const MyHomePage(title: 'Welcome Page'),
    );
  }
}

