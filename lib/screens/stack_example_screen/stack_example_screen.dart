import 'package:flutter/material.dart';

class StackExampleScreen extends StatefulWidget {
  const StackExampleScreen({Key? key}) : super(key: key);

  @override
  State<StackExampleScreen> createState() => _StackExampleScreenState();
}

class _StackExampleScreenState extends State<StackExampleScreen> {
  double leftPosition = 100;
  double topPosition = 100;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack example screen"),
        ),
        body: Column(
          children: [
            GestureDetector(
              onPanUpdate: (value){
                if (leftPosition < (leftPosition + value.delta.dx) && (leftPosition + value.delta.dx) < width - 150)
                  {
                    setState(() {
                      leftPosition += value.delta.dx;
                    });
                  }

                if (leftPosition > 20 && leftPosition < (width - 150))
                  {
                    setState(() {
                      leftPosition += value.delta.dx;
                    });
                  }
                else
                  {
                    setState(() {
                      leftPosition = leftPosition;
                    });
                  }

                if (topPosition > 20 && topPosition < (height - 150))
                {
                  setState(() {
                    topPosition += value.delta.dy;
                  });
                }
                else
                {
                  setState(() {
                    topPosition = topPosition;
                  });
                }
              },
              child: Container(
                color: Colors.yellow,
                height: height - 200,
                width: width - 20,
                child: Stack(
                  children: [
                    Positioned(
                      left: leftPosition,
                      top: topPosition,
                      child: Image.network("https://freepngimg.com/thumb/car/75694-bird's-eye-car-top-view,plan-view-icon-thumb.png"),

                      ),

                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (leftPosition > 20) {
                          leftPosition -= 10;
                        }
                      });
                    },
                    child: Icon(Icons.arrow_back)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (leftPosition < (width - 150)) {
                          leftPosition += 10;
                        }
                      });
                    },
                    child: Icon(Icons.arrow_forward))
              ],
            )
          ],
        )

        // Stack(
        //   children: [
        //
        //     Positioned(
        //       top: 100,
        //       left: 100,
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.blue,
        //       ),
        //     ),
        //
        //   Positioned(
        //     top: 150,
        //     left: 150,
        //     child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //   ),
        //
        //     Positioned(
        //       top: 200,
        //       left: 200,
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.green,
        //       ),
        //     ),
        //   ],
        // )
        );
  }
}
