import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_3/screens/home_page.dart';
import 'package:quiz_app_3/screens/international_page.dart';
import 'package:quiz_app_3/screens/national_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/national': (context) => NationalPage(),
        '/international': (context) => InternationalPage(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
