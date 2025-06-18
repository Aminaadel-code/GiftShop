import 'package:flutter/material.dart';


class mytextfiled extends StatelessWidget {
  final TextInputType MyTextType;
  final bool isPass;
  final String Myhint;

  const mytextfiled({
    super.key,
    required this.MyTextType,
    required this.isPass,
    required this.Myhint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22,right: 22),
      child: TextField(
        keyboardType: MyTextType,
        obscureText: isPass,

        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          hintText: Myhint,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            //borderSide: BorderSide(color: Colors.pink.shade300, width: 8),
          ),
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(37),
           // borderSide: BorderSide(color: Colors.pink.shade300, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            //borderSide: BorderSide(color: Colors.pink.shade500, width: 2),
          ),
        ),
      ),
    );
  }
}
