import 'package:book_spa/screens/homepage.dart' show HomeScreen;
import 'package:book_spa/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late String email;
  late String password;
 static  AuthController instance = Get.find();
  //Allows auth controller to be globally
  // //email, password to define user accessible in the app
  
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
    print("home page");
    Get.offAll(()=>const HomeScreen());
  }else{
    Get.offAll(()=> const LogIn()); 
  }
}
//funtion for registration
void register(String email, password) async{
 try{
await auth.createUserWithEmailAndPassword(email: email, password: password);
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