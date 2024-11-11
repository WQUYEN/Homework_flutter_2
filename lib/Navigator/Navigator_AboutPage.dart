import 'package:flutter/material.dart';

class Nav_About_Page extends StatelessWidget {
  const Nav_About_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigator About Page"),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text("Navigator About Page"),
      ),
    );
  }
}
