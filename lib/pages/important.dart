// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';

class ImportantPage extends StatelessWidget {
  const ImportantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Text(
          'important',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
