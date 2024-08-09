
import 'package:flutter/material.dart';
import 'package:calculator/View/home.dart';


class CustomButtons extends StatelessWidget {
  final Color? colors;
  final String title;
  
  final VoidCallback onpressed;
  const CustomButtons({super.key,this.colors , required this.title , required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: colors ?? Colors.grey),
        // color: graycolor,
        width: 65,
        height: 65,
        child: Center(child: Text(title)),
      ),
    );
  }
}
