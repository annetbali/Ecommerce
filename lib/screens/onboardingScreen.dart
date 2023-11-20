// import 'dart:async';
import 'package:ecommerce_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';

// import 'loginScreen.dart';
// onboarding screen
class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/onboarding1.jpg", height: 250,),
            const Text("Choose our Products"),
            ElevatedButton(onPressed: (){
                 Navigator.push(context,MaterialPageRoute(
                builder: (context) => const OnboardingScreenTwo()),);
              }, child: const Text("Get started")), 
          ],
        ),
      ),
    );
  }
}

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/onboarding2.jpg", height: 250,),
            const Text("Add to Cart"),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => const OnboardingScreenThree()),);
            }, child: const Text("Next")), 
          ],
        ),
      ),
    );
  }
}

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/onboarding3.jpg", height: 250,),
            const Text("Easy & Fast Delivery"),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => LoginScreen()),);
              }, child: const Text("Done")), 
          ],
        ),
      ),
    );
  }
}










































