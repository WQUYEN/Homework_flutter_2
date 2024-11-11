import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _isDarkMode = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isDarkMode = value; // Cập nhật trạng thái khi switch thay đổi
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch"),
        actions: [
          Switch(
            value: _isDarkMode,
            onChanged: _toggleSwitch,
          ),
        ],
      ),
      body: Container(
        color: _isDarkMode ? Colors.black : Colors.white,
        child: Center(
          child: Text('Display is ${_isDarkMode ? "Dark Mode" : "Light Mode"}',
            style: TextStyle(color: _isDarkMode ? Colors.white : Colors.black,fontSize: 30),
          ),
        ),
      ),
    );
  }
}
