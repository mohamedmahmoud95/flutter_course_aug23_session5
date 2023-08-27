import 'package:flutter/material.dart';

class SnackBarExampleScreen extends StatefulWidget {
  const SnackBarExampleScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarExampleScreen> createState() => _SnackBarExampleScreenState();
}

class _SnackBarExampleScreenState extends State<SnackBarExampleScreen> {

  void showSnackBar()
  {
    const SnackBar snackBar = SnackBar(duration: Duration(seconds: 1),
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
  
  
  
  
  void _showSnackBar(){
    const SnackBar duckSnackBar = SnackBar(
      backgroundColor: Colors.blue,
        duration: Duration(seconds: 3),
        content:  Center(
         // color: Colors.blue,
            child: Text("Hello" )),
    );
    ScaffoldMessenger.of(context).showSnackBar(duckSnackBar);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Snack bar example"),
      ),
      
      body:
        InkWell(
          onTap: (){
            _showSnackBar();
          },

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("اضغط على البطّة",
                  style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade800
                ),),
              Image.network("https://culverduck.com/wp-content/uploads/2020/11/duck-animate-3-500x500.png"),


            ],
          ),
        )

      // InkWell(
      //   onTap: (){
      //     showSnackBar();
      //   },
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children:[
      //       Text("اضغط على البَطّة",
      //           style: TextStyle(
      //             fontSize: 30,
      //             color: Colors.blue.shade800
      //           ),
      //       ),
      //     Image.network("https://culverduck.com/wp-content/uploads/2020/11/duck-animate-3-500x500.png"),
      //   ]
      //   ),
      // ),

    );
  }
}
