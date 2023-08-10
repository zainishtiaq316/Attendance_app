//import 'package:attendenceapp/Signup_Signin_Screen/login_screen.dart';
import 'package:attendenceapp/Signup_Signin_Screen/splash.dart';
import 'package:attendenceapp/utils/color_utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
  // await checkInternetConnectivity();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendence App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPColor,
      ),
      home: SplashScreen(),
    );
  }
}
