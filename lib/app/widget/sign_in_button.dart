import 'package:flutter/material.dart';
import 'package:timer_tracker/app/widget/customer_shape.dart';

class SignInButton extends CustomerShape{
  SignInButton({
    String? text,
    Color? color,
    Color? textColor,
    required VoidCallback onPressed
}):super(child: Text(text!,style: TextStyle(color: textColor, fontSize: 15)),
      color:color!, onPressed: onPressed, borderRadius: 10);
}