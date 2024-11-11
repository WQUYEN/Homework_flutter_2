import 'package:flutter/material.dart';
import 'package:flutter_home_work_2/Navigator/Navigator_ContactPage.dart';

import 'Navigator_AboutPage.dart';
import 'Navigator_HomePage.dart';

class NavigatorScreen extends StatelessWidget {
  const NavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigator"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nav_Home_Page())
              );
            }, child: const Text("Home")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nav_About_Page())
              );
            }, child: const Text("About")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nav_Contact_Page())
              );
            }, child: const Text("Contact")),
          ],
        ),
      ),
    );
  }
}
