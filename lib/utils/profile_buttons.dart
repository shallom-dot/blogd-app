import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key, required this.text, required this.myiconn, required this.press});
  final String text;
   final Widget myiconn;
   final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return  Row(
  children: [
    myiconn,
    SizedBox(width: 10), // Adjust the width as needed
    TextButton(
     onPressed: press,
     child: Text(text,
     style: TextStyle(
      fontSize: 15,
     ),),
      style: TextButton.styleFrom(
       foregroundColor: Colors.white,// Text color
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Button padding
        textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // Text style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Rounded corners
        ),
      ),
     ),
  ],
);
  }
}