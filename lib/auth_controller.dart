import 'package:book_spa/screens/homepage.dart';
import 'package:book_spa/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
 static  AuthController instance = Get.find();
  //Allows auth controller to be globally
  // //email, password to define user accessible in the app
  // ignore: unused_field
  late Rx<User?>  _user;
 FirebaseAuth auth = FirebaseAuth.instance;
@override
void onReady(){
 super.onReady();
 _user = auth.currentUser as Rx<User?>;
 //our user will be notified
 _user.bindStream(auth.userChanges());
  ever(_user, _initialScreen);
} 
_initialScreen(User? user){
  if(user==null){
    // ignore: avoid_print
    print("login page");
    Get.offAll(()=>const LogIn());
  }else{
    Get.offAll(()=> const HomeScreen()); 
  }
}
//funtion for registration
void register(String name, phonenumber,String email, password){
 try{
auth.createUserWithEmailAndPassword(email: email, password: password);
 }
catch(e){
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
)
);
}
}
} 