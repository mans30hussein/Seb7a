
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/resultScreen.dart';

class CustomIconBottons extends StatelessWidget {
   CustomIconBottons({
    super.key,
    required this.count,
    required this.height,
     required this.icon,
     required this.onPressed,
  });

  final int count;
  final double height;
  Icon icon ;
  Function() onPressed ;


  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed,
        icon: icon ,) ;
  }
}