import 'package:flutter/material.dart';
import 'package:perfumes_shop/pages/Login.dart';
import '../share/MyTextField.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // 📌 هذا هو السطر الجديد
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              SizedBox(height: 150),

              // UserName
              mytextfiled(
                MyTextType: TextInputType.text,
                isPass: false,
                Myhint: "UserName",
              ),
              SizedBox(height: 50),

              // Email
              mytextfiled(
                MyTextType: TextInputType.emailAddress,
                isPass: false,
                Myhint: "Your Email",
              ),
              SizedBox(height: 50),

              // Password
              mytextfiled(
                MyTextType: TextInputType.text,
                isPass: true,
                Myhint: "Your Password",
              ),
              SizedBox(height: 50),

              // Confirm Password
              mytextfiled(
                MyTextType: TextInputType.text,
                isPass: true,
                Myhint: "Confirm Password",
              ),
              SizedBox(height: 100),

              // Sign Up Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // تنفيذ التسجيل
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('Signup'),
                ),
              ),
              SizedBox(height: 50),

              // Text and Sign in Button
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
