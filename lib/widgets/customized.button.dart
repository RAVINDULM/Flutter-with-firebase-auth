import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
   final VoidCallback? onPressed;
  const CustomizedButton({Key? key, this.buttonText, this.buttonColor, this.textColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width-20,
            decoration: BoxDecoration(
                color: buttonColor,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              buttonText!,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ))),
      ),
    );
    
  }
}