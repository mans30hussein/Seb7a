import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.height,
    required this.text,
  });

  final double height;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
      fontSize: height * 0.06,
      fontWeight: FontWeight.bold,
    ),);
  }
}