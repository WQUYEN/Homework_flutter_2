import 'package:flutter/material.dart';

class Nav_Contact_Page extends StatelessWidget {
  const Nav_Contact_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigator Contact Page"),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text("Navigator Contact Page"),
      ),
    );
  }
}
