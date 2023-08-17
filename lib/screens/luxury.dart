import 'package:book_spa/screens/homepage.dart';
import 'package:flutter/material.dart';

class LuxuryScreen extends StatefulWidget {
  const LuxuryScreen({super.key});

  @override
  State<LuxuryScreen> createState() => _LuxuryScreenState();
}

class _LuxuryScreenState extends State<LuxuryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPICE UP YOUR LOOKS"),
      ),
      body: (
        Row(
          children: [
            ElevatedButton(
             onPressed: () { 
                         Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                     },
              child: const Text("Home Page")
                            ),
            const Text("Luxury SPA"),
            const Text("Glamour SPA"),
            const Text("Vicious SPA"),
            const Text("Annes SPA"),
          ],
        )
      ),
    );
  }
}