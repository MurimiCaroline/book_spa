import 'package:book_spa/auth_controller.dart';
// import 'package:book_spa/screens/homepage.dart';
import 'package:book_spa/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPA BOOK',
      //home: HomeScreen(),   
    //  home: LogIn(),
      home: SignUpPage (),
    );
  }
}
