import 'package:flutter/material.dart';
import 'package:flutter_home_work_2/App_bar.dart';
import 'package:flutter_home_work_2/CalculatorScreen.dart';
import 'package:flutter_home_work_2/CheckboxScreen.dart';
import 'package:flutter_home_work_2/CounterScreen.dart';
import 'package:flutter_home_work_2/Navigator/Navigator_demo.dart';
import 'package:flutter_home_work_2/NavigationBar_DrawerMenu/bottom_nav.dart';
import 'package:flutter_home_work_2/NavigationBar_DrawerMenu/drawer_menu.dart';
import 'package:flutter_home_work_2/RadioButtonScreen.dart';
import 'package:flutter_home_work_2/SwitchScreen.dart';
import 'package:flutter_home_work_2/UserInformation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/appbar': (context) => const AppbarScreen(),
        '/bottom_nav': (context) => const BottomNavScreen(),
        '/drawer_menu': (context) => const DrawerMenuScreen(),
        '/navigator': (context) => const NavigatorScreen(),
        '/information': (context) => const UserInformation(),
        '/switch': (context) => const SwitchScreen(),
        '/checkbox': (context) => const CheckboxScreen(),
        '/radio_btn': (context) => const RadioButtonScreen(),
        '/calculator': (context) => const CalculatorScreen(),
        '/counter': (context) => const CounterScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/appbar');
                },
                child: const Text("1. Appbar")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bottom_nav');
                },
                child: const Text("2. Bottom Navigation")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/drawer_menu');
                },
                child: const Text("3. Drawer Menu")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/counter');
                },
                child: const Text("4. Counter")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/navigator');
                },
                child: const Text("5. Navigator")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/information');
                },
                child: const Text("6. Enter Information")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/switch');
                },
                child: const Text("7. Switch")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkbox');
                },
                child: const Text("8. Checkbox")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/radio_btn');
                },
                child: const Text("9. Radio Button")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/calculator');
                },
                child: const Text("10. Simple Calculator")),
          ],
        ),
      ),
    );
  }
}
