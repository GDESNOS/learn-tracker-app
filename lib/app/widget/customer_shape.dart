import 'package:flutter/material.dart';

class CustomerShape extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double? height;
  final VoidCallback onPressed;

  CustomerShape(
      {required this.child,
      required this.color,
     required this.borderRadius,
        this.height,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(
              horizontal: 80, vertical: 15
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius!))
          ),
          //color and border radius
      ),
    );
  }
}
