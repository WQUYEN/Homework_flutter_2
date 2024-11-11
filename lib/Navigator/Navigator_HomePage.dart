import 'package:flutter/material.dart';

class Nav_Home_Page extends StatelessWidget {
  const Nav_Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigator Home Page"),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text("Navigator Home Page"),
      ),
    );
  }
}
