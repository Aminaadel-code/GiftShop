import 'package:flutter/material.dart';
import 'package:perfumes_shop/pages/singup.dart';
import '../share/MyTextField.dart';
import 'lib/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSignInActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //const SizedBox(height: 2),
                  Image.asset(
                    'assets/logo.png',
                    height: 200,
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    "Welcome to Bloom & Gift",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Toggle between Sign In and Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignInActive = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: isSignInActive ? Colors.pink[200] : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: isSignInActive
                                ? [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ]
                                : [],
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: isSignInActive ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignInActive = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: !isSignInActive ? Colors.pink[200] : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: !isSignInActive ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 23),

                  // Show fields or signup widget
                  if (isSignInActive) ...[
                    mytextfiled(
                      MyTextType: TextInputType.emailAddress,
                      isPass: false,
                      Myhint: "Your Email",
                    ),
                    const SizedBox(height: 18),
                    mytextfiled(
                      MyTextType: TextInputType.text,
                      isPass: true,
                      Myhint: "Your Password",
                    ),
                  ] else
                    const SingUp(),

                  const SizedBox(height: 20),

                  // Submit Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (isSignInActive) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const home()),
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const SingUp()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[100],
                        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      child: Text(isSignInActive ? 'Submit' : 'Sign Up'),
                    ),
                  ),

                  const SizedBox(height: 13),

                  // Divider and Social Media Icons
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.green[100],
                              thickness: 3,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              "or",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.green[100],
                              thickness: 3,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 33),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(image: AssetImage('assets/icons8-google-50.png')),
                          Image(image: AssetImage('assets/icons8-facebook-48.png')),
                          Image(image: AssetImage('assets/icons8-apple-50.png')),
                        ],
                      ),

                      //const SizedBox(height: 3),


                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          'assets/bear.png',
                          height: 200,
                          //width: 50,
                        ),
                      ),

                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
