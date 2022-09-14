import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:frasesonday/screen/Menu_Screen.dart';



Future main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        useInheritedMediaQuery: true,
        home: Menu_Screen(),
      );

}

