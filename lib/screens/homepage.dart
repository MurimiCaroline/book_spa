//  import 'package:book_spa/screens/login.dart';
import 'package:book_spa/screens/luxury.dart';
import 'package:book_spa/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
     /* routes: {
        '/logIn' : (context) => const LogIn(),
      }, */
    return Scaffold(

        body: ListView(
          scrollDirection: Axis.vertical,
                  children: [
                    Container(
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
                          Get.to(() =>const SignUpPage());
                      },
                      child: const Text('Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                                    ),

                          Link(
                            target: LinkTarget.self,
                           uri: Uri.parse("https://www.youtube.com/watch?v=ujlqRTJg48g&ab_channel=Codepur"),
                         builder: (context,followLink) {
                          return GestureDetector(
                            onTap: followLink,
                            child: const Text('Git',
                           style: TextStyle(
                            color: Colors.black,
                          ),
                          )
                          ); 
                         }
                               
                           
                                                           
                           
                            )
                           

                           
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
                          height: 250,
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
                          height:250,
                         width: 550,
                                        ),
                                   ),
                                     ),
                                    ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
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
                         imagePath: 'images/viciousspa.jpg',
                          height: 250,
                          width: 550,
                        ),
                      ),
                                    ),
                                     Expanded(
                      child: GestureDetector(
                        onTap: (){

                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LuxuryScreen()),
                          );
                        },

                        child: const _ImageWithHoverHighlight(
                         imagePath: 'images/annexspa.jpg',
                          height: 250,
                          width: 550,
                        ),
                      ),
                                    ),
                              ],
                            ),
                              const Text(
                                "About Us",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "spice up your look is a foundation founded in 2019 to "

                                ),
                                const Text(
                                  "make easy getting and booking cosmetic services at the comfort of your home"),
                                  ],
                                  ),
                    )
        ]
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
              color: const Color.fromRGBO(248, 8, 68, 0.4).withOpacity(0.3),
              
            ),
        ],
      ),
    );
  }
}



