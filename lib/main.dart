import 'package:flutter/material.dart';
import 'package:frasesonday/screen/Menu_Screen.dart';
import 'package:frasesonday/screen/home_page.dart';



Future main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
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

