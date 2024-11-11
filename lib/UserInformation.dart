import 'package:flutter/material.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({super.key});

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  void _submitText() {
    setState(() {
      _displayText = _controller.text; // Lấy dữ liệu từ TextField
    });
    _controller.clear(); // Xóa nội dung TextField sau khi lấy dữ liệu
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter Information"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: _submitText, // Gọi hàm khi nhấn nút
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20),
            Text(
              'Your name is: $_displayText',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
