// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';

class ImportantPage extends StatefulWidget {
  const ImportantPage({super.key});

  @override
  State<ImportantPage> createState() => _ImportantPageState();
}

class _ImportantPageState extends State<ImportantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgpages,
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Container(
          child: Text(
            'important',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
