// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class AddBTN extends StatelessWidget {
  final VoidCallback onPressed;

  const AddBTN({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        elevation: 2,
        onPressed: onPressed,
        child: ClipOval(
          child: Image.asset(
            'assets/img/zilla.png',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
