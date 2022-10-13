import 'package:flutter/material.dart';
import 'package:flutter_application_shoping/pages/first_page.dart';
import 'package:flutter_application_shoping/pages/second_page.dart';
import 'package:flutter_application_shoping/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Iniciando Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    late Widget child;

    switch (_index) {
      case 0:
        child = const FlutterLogo();
        break;
      case 1:
        child = const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FirstPage(),
        );
        break;
      case 2:
        child = const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ThirdPage(),
        );
        break;
    }

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() => _index = newIndex),
          currentIndex: _index,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.blueAccent,
                )),
            BottomNavigationBarItem(
                label: 'Register',
                icon: Icon(
                  Icons.login,
                  size: 30,
                  color: Colors.red,
                )),
            BottomNavigationBarItem(
                label: 'Register',
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.brown,
                ))
          ]),
    );
  }
}
