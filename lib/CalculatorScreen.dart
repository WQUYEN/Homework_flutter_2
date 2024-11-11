import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  Widget calculatorButton(String btnTxt, Color btnColor, Color txtColor) {
    return SizedBox(
      width: 85,
      height: 85,
      child: ElevatedButton(
        onPressed: () {
          calculation(btnTxt);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        child: Text(
          btnTxt,
          style: TextStyle(
            fontSize: 30,
            color: txtColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Calculator", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  opr,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white, fontSize: 60),
                      text,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('AC', Colors.grey, Colors.black),
                // Gọi hàm mà không có const
                // Bạn có thể thêm nhiều nút ở đây
                calculatorButton('+/-', Colors.grey, Colors.black),
                calculatorButton('%', Colors.grey, Colors.black),
                calculatorButton('/', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('7', Colors.grey[850]!, Colors.white),
                // Gọi hàm mà không có const
                calculatorButton('8', Colors.grey[850]!, Colors.white),
                calculatorButton('9', Colors.grey[850]!, Colors.white),
                calculatorButton('x', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('4', Colors.grey[850]!, Colors.white),
                // Gọi hàm mà không có const
                calculatorButton('5', Colors.grey[850]!, Colors.white),
                calculatorButton('6', Colors.grey[850]!, Colors.white),
                calculatorButton('-', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorButton('1', Colors.grey[850]!, Colors.white),
                // Gọi hàm mà không có const
                calculatorButton('2', Colors.grey[850]!, Colors.white),
                calculatorButton('3', Colors.grey[850]!, Colors.white),
                calculatorButton('+', Colors.amber, Colors.white),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                    padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "0",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                calculatorButton('.', Colors.grey[850]!, Colors.white),
                // Gọi hàm mà không có const
                calculatorButton('=', Colors.grey[850]!, Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }

  //Calculator logic
  String text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  String opr = '';
  dynamic preOpr = '';

  void calculation(String btnText) {
    if (btnText == 'AC') {
      text = '0'; // Đặt lại text thành '0'
      numOne = 0;
      numTwo = 0;
      result = ''; // Đặt lại result thành chuỗi rỗng
      finalResult = '0'; // Đặt lại finalResult thành '0'
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-$result';
      finalResult = result;
    } else {
      // Giới hạn số ký tự
      if (result.length < 7) {
        result = result + btnText; // Chỉ cho phép thêm nếu chưa đạt giới hạn
      }
      finalResult = result;
    }

    // Cắt bớt chiều dài chuỗi text
    setState(() {
      text = finalResult;
      if (text.length > 10) {
        text = text.substring(0, 10); // Cắt bớt nếu dài hơn 10 ký tự
      }
    });
  }
  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)) {
        return result = splitDecimal[0].toString();
      }
    }
    return result;
  }
}
