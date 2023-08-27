import 'package:flutter/material.dart';
import 'package:flutter_session_5/screens/BottomSheetExampleScreen.dart';
import 'package:flutter_session_5/screens/alert%20dialog%20example/alert%20dialog%20example.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //BottomSheetExampleScreen(),
      AlertDialogExampleScreen(),
    );
  }
}