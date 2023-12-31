import 'package:flutter/material.dart';

import 'homeScreen.dart';
import 'register.dart';
import 'resetPasswordScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Login here',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigate to the Reset Password Screen 
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResetPasswordScreen(), 
                ),
              );
            },
            child: const Text('Forgot Password'),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Do not have an account?'),
              TextButton(
                child: const Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  // Navigate to the Register Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}


// class LoginScreen extends StatelessWidget {
//   LoginScreen({super.key});
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();


//   void _handleLogin(BuildContext context) { // Pass context as a parameter
//     // Add your authentication logic here
//     String email = emailController.text;
//     String password = passwordController.text;

//     // Check if the email and password are valid
//     if (email.isNotEmpty && password.isNotEmpty) {
     
//     } else {
//       // Show an error message if the fields are empty
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text("Error"),
//             content: const Text("Please enter both email and password."),
//             actions: <Widget>[
//               FlatButton(
//                 child: const Text("OK"),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   labelText: 'Email',
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               TextField(
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                 ),
//                 obscureText: true,
//               ),
//               const SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () {
//                   _handleLogin(context); // Pass context to the function
//                 },
//                 child: const Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
  
//   FlatButton({required Text child, required Null Function() onPressed}) {}
// }
