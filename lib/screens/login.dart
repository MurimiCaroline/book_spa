import 'package:book_spa/auth_controller.dart';
import 'package:book_spa/screens/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.4;
    double containerHeight = MediaQuery.of(context).size.height * 0.4;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/loginbg.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              height: containerHeight,
              width: containerWidth,
              // margin: const EdgeInsets.all(20),
              // padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   const Text(
                    'LOG IN', // Title
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    prefixIcon:Icon(
                      Icons.password,
                      color: Colors.black,
                    ) ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async{
                      AuthController.instance.onReady();
                      // Handle form submission
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    child: const Text('Log In'),
                    
                  ),
                  RichText(text: 
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap=() =>Get.to(const SignUpPage()), 
                      text: "Don't have an account?",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
