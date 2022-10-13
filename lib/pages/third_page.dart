import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

const List<Color> purpleGradients = [
  Color(0xFFE1BEE7),
  Color(0xFFCE93D8),
  Color(0xFFBA68C8),
];

const List<Color> blueGradients = [
  Color(0xFFE3F2FD),
  Color(0xFFBBDEFB),
  Color(0xFF90CAF9),
];

const List<Color> yellowGradients = [
  Color(0xFFFFF59D),
  Color(0xFFFFF176),
  Color(0xFFFFEE58),
];

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 30, maxHeight: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 200,
                width: 350,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: yellowGradients),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 35),
                  child: const Text(
                    'Iniciando',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: purpleGradients),
                ),
                child: const Text(
                  'hola',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => print('hola'),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const ShapeDecoration(
                      gradient: LinearGradient(colors: blueGradients),
                      shape: CircleBorder()),
                  child: const ImageIcon(
                    AssetImage('assets/images/log.png'),
                    size: 80,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
