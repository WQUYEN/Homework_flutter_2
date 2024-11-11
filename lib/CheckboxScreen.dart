import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool _isChecked1 = false; // Trạng thái của checkbox 1
  bool _isChecked2 = false; // Trạng thái của checkbox 2
  bool _isChecked3 = false; // Trạng thái của checkbox 3

  void _handleCheckboxChange(bool? value, int checkboxNumber) {
    setState(() {
      if (checkboxNumber == 1) {
        _isChecked1 = value ?? false; // Cập nhật trạng thái cho checkbox 1
      } else if (checkboxNumber == 2) {
        _isChecked2 = value ?? false; // Cập nhật trạng thái cho checkbox 2
      } else if (checkboxNumber == 3) {
        _isChecked3 = value ?? false; // Cập nhật trạng thái cho checkbox 3
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Example'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),

          CheckboxListTile(
            title: const Text('Work 1'),
            value: _isChecked1,
            onChanged: (bool? value) {
              _handleCheckboxChange(value, 1);
            },
          ),
          const SizedBox(height: 20,),

          CheckboxListTile(
            title: const Text('Checkbox 2'),
            value: _isChecked2,
            onChanged: (bool? value) {
              _handleCheckboxChange(value, 2);
            },
          ),
          const SizedBox(height: 20,),

          CheckboxListTile(
            title: const Text('Checkbox 3'),
            value: _isChecked3,
            onChanged: (bool? value) {
              _handleCheckboxChange(value, 3);
            },
          ),
          const SizedBox(height: 20),

          Text(
            'Work 1 is ${_isChecked1 ? 'Complete' : 'Incomplete'}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20,),

          Text(
            'Work 2 is ${_isChecked2 ? 'Complete' : 'Incomplete'}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20,),
          Text(
            'Work 3 is ${_isChecked3 ? 'Complete' : 'Incomplete'}',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
