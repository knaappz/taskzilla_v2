// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Container(
          child: Text(
            'complete',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
