
import 'package:book_spa/auth_controller.dart';
import 'package:book_spa/screens/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
   
     double containerWidth = MediaQuery.of(context).size.width * 0.4;
    double containerHeight = MediaQuery.of(context).size.height * 0.8;
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
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                   const Text(
                    'SIGN UP', // Title
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ), 
                  ),
                 /* const TextField(
                    decoration: InputDecoration(
                      // hintText: 'Name',
                      labelText: ' Name',
                      ),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Phone Number'),
                  ), */
                  const SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: 
                    ElevatedButton(
                          onPressed: () {
                            
                           AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            
                          ),
                          child: const Text('Sign Up',),
                          
                        ),                                          
                                      ),
                    SizedBox(height: containerHeight*0.08,),
                    RichText(text: 
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap=() =>Get.to(const LogIn()), 
                      text: "Have an account?",
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