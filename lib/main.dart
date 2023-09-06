import 'package:book_spa/auth_controller.dart';
// import 'package:book_spa/screens/homepage.dart';
import 'package:book_spa/screens/login.dart';
import 'package:book_spa/screens/splashscreen.dart';
//import 'package:book_spa/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform,
).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPA BOOK',
    //  home: const HomeScreen(),   
     home: const SplashScreen(),
      //home: SignUpPage (),
      routes:{
        '/login' : (context) =>  const LogIn(),
      }
    );
  }
}
