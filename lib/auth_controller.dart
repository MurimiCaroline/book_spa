import 'package:book_spa/screens/homepage.dart' show HomeScreen;
import 'package:book_spa/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late String email;
  late String password;
  final Rx<User?> _user = Rx<User?>(null);
  static AuthController instance = Get.find();
  //Allows auth controller to be globally
  // //email, password to define user accessible in the app

  // late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
   void onReady() {
    super.onReady();
    // Bind the Stream<User?> to the Rx<User?> variable.
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      // User is not logged in, navigate to the login screen.
      Get.offAll(() => const LogIn());
    } else {
      // User is logged in, navigate to the home screen.
      Get.offAll(() => const HomeScreen());
    }
  }

//funtion for registration
  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          ));
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "Login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Login failed",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          ));
    }
  }

  void logOut() async {
    await auth.signOut();
  }
}
