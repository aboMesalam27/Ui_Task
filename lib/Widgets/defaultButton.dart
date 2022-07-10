import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  Color buttonColor;
  Color textColor;
  double raduis;
  double heightContainer;
  double widthContainer;
  String text;
  DefaultButton({
    required this.textColor,
    required this.buttonColor,
    required this.raduis,
    required this.text,
    required this.heightContainer,
   required this.widthContainer
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:heightContainer,
      width: widthContainer,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduis)),
        color: buttonColor,
        onPressed: () {},
        child: Text(
          text.toString(),
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
