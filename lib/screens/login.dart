import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
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
                      primary: Colors.orange,
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
