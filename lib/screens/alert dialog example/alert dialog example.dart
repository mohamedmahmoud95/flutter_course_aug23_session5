import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AlertDialogExampleScreen extends StatefulWidget {
  const AlertDialogExampleScreen({Key? key}) : super(key: key);

  @override
  State<AlertDialogExampleScreen> createState() =>
      _AlertDialogExampleScreenState();
}

class _AlertDialogExampleScreenState extends State<AlertDialogExampleScreen> {
  String email = "test@gmail.com";
  String password = "12345678";

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20),
      // ),
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 1),
      content: Center(
        child: Text(
          msg,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
            fontFamily: 'Outfit',
            color: Colors.white,
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
        title: Text("Alert dialog example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                style: const TextStyle(color: Colors.black),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Email",
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              //password text field
              TextField(
                controller: _passwordController,
                style: const TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.key),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              ElevatedButton(
                onPressed: () {
                  if (_emailController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    _showSnackBar(context, "Empty email or password field !");
                  }
                  if (_emailController.text == email &&
                      _passwordController.text == password) {
                    _showSnackBar(context, "Login success");
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Login error"),
                        content: const Text("Invalid email or password"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("ok")),
                        ],
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
