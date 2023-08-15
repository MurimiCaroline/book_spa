import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPICE UP YOUR LOOK'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Empty function for onPressed
                },
                child: const Text('Log In'),
              ),
            ],
          ),
          const Row(
            children: [
              Image(
                image: AssetImage('images/luxuryspa.jpg'),
                height: 200,
                width: 150,
              ),
              Image(
                image: AssetImage('images/glamourspa.jpg'),
                height: 200,
                width: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
