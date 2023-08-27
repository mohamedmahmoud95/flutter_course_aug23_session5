import 'package:flutter/material.dart';

class BottomSheetExampleScreen extends StatefulWidget {
  const BottomSheetExampleScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetExampleScreen> createState() => _BottomSheetExampleScreenState();
}

class _BottomSheetExampleScreenState extends State<BottomSheetExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Bottom sheet example"),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("Open bottom sheet"),
          onPressed: (){
            showModalBottomSheet(context: context,
                isDismissible: true,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (context) =>
            Container(
              padding: EdgeInsets.all(8),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade100,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FlutterLogo(size: 100,),
                    FlutterLogo(size: 100,),
                    FlutterLogo(size: 100,),
                    FlutterLogo(size: 100,),

                    SizedBox(height: 20,),

                    ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("dismiss"))

                  ],
                ),
              ),

            ));
          },
        ),
      ),
    );
  }
}
