import 'package:flutter/material.dart';
import 'package:flutter_session_5/screens/BottomSheetExampleScreen.dart';
import 'package:flutter_session_5/screens/alert%20dialog%20example/alert%20dialog%20example.dart';
import 'package:flutter_session_5/screens/snack_bar_example_screen/snack-bar%20example%20screen.dart';
import 'package:flutter_session_5/screens/stack_example_screen/stack_example_screen.dart';

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
      //SnackBarExampleScreen(),
      //AlertDialogExampleScreen(),
      StackExampleScreen(),
    );
  }
}
