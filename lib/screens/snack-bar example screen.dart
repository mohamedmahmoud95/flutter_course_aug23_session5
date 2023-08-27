import 'package:flutter/material.dart';

class SnackBarExampleScreen extends StatefulWidget {
  const SnackBarExampleScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarExampleScreen> createState() => _SnackBarExampleScreenState();
}

class _SnackBarExampleScreenState extends State<SnackBarExampleScreen> {

  void showSnackBar()
  {
    final SnackBar snackBar = const SnackBar(duration: Duration(seconds: 1),
        backgroundColor: Colors.blue,
        content: Center(
          child: Text("كاااااك",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Snack bar example"),
      ),
      
      body: InkWell(
        onTap: (){
          showSnackBar();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("اضغط على البَطّة",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade800
                ),
            ),
          Image.network("https://culverduck.com/wp-content/uploads/2020/11/duck-animate-3-500x500.png"),
        ]
        ),
      ),

    );
  }
}
