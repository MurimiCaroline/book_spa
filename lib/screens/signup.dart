import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
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
              margin: const EdgeInsets.all(20),
              // padding: const EdgeInsets.all(20),
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
                  const TextField(
                    decoration: InputDecoration(labelText: ' Name'),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Phone Number'),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle form submission
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    child: const Text('Log In'),
                    
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