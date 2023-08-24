import 'package:flutter/material.dart';

 class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
       padding: EdgeInsets.all(16.0),
           child: Form(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Email"),
              )
            ],
          ),
          ),
        
         ),
      );
      }
}