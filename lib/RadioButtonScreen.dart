import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  String? _selectedOption; // Biến để lưu lựa chọn hiện tại

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value; // Cập nhật lựa chọn
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio Button"),
      backgroundColor: Colors.grey,),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: const Text("Listen music"),
              leading: Radio(
                  value: "Listen Music",
                  groupValue: _selectedOption,
                  onChanged: _handleRadioValueChange),
            ),
            ListTile(
              title: const Text("Netflix and chill ??"),
              leading: Radio(
                  value: "Netflix and chill ??",
                  groupValue: _selectedOption,
                  onChanged: _handleRadioValueChange),
            ),
            ListTile(
              title: const Text("Sleep"),
              leading: Radio(
                  value: "Sleep",
                  groupValue: _selectedOption,
                  onChanged: _handleRadioValueChange),
            ),
            const SizedBox(height: 20),
            Text(
              'Selected Option: ${_selectedOption ?? 'Nothing'}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
