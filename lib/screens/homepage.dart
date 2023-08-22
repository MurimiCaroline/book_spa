import 'package:book_spa/screens/luxury.dart';
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
      
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: Column(          
          children: [
            const Center(
              child: Text(
                "SPICE UP YOUR LOOK",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),)
                ),
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
            const SizedBox(height: 10),
             Row(
              children: [              
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                        
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LuxuryScreen()),
                      );
                    },
                     
                    child: const _ImageWithHoverHighlight(
                     imagePath: 'images/luxuryspa.jpg',
                      height: 300,
                      width: 550,
                    ),
                  ),
                ),
                 Expanded(
                   child: GestureDetector(
                    onTap: (){
                        // ignore: avoid_print
                        print("cat");
                    },
                     
                    child: const _ImageWithHoverHighlight(
                     imagePath: 'images/glamourspa.jpg',
                      height:300,
                     width: 550,
                                    ),
                               ),
                 ),
                ],
        )
              ],      
              ),
      ),
    
      );
  }
}

class _ImageWithHoverHighlight extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;

  const _ImageWithHoverHighlight({
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  __ImageWithHoverHighlightState createState() =>
      __ImageWithHoverHighlightState();
}

class __ImageWithHoverHighlightState extends State<_ImageWithHoverHighlight> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Stack(
        children: [
          Image.asset(
            widget.imagePath,
            width: widget.width,
            height: widget.height,
          ),
          if (isHovered)
            Container(
              width: widget.width,
              height: widget.height,
              color: Colors.grey.withOpacity(0.3),
            ),
        ],
      ),
    );
  }
}



