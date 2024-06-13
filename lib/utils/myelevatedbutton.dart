import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {

   MyElevatedButton({super.key, required this.text, required this.onPressed, required this.backgroundColor, required this.textColor, this.borderColor, this.icon, this.iconColor});

   final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              width: 1), // Border color and width
                        ),
                                                 
                        minimumSize: const Size(250, 50),
                        elevation: 0,
                      ),
                      onPressed: onPressed,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(text),
                      ),
                    );
  }
}

class VoiCallback {
}

