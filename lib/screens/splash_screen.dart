import 'dart:async';
import 'package:ecommerce_app/screens/onboardingScreen.dart';
import 'package:flutter/material.dart';

// splash screen
class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

 @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => const OnboardingScreenOne()));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(150, 48, 228, 12),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png", height: 180,),
            const Text("Shopper's Point",
              style: TextStyle(fontSize: 20)
            ),
          ],
        ),
      ),
    );
  }
}
