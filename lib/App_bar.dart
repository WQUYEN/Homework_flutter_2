import 'package:flutter/material.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        actions: [
          IconButton(
              icon: const Icon(Icons.slideshow_outlined),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text("Simple SnackBar"),
                  duration: const Duration(seconds: 6),
                  action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      }),
                ));
              })
        ],
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text("Appbar and snackBar"),
      ),
    );
  }
}
