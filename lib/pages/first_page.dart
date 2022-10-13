import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          //color: Colors.green,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Text(
                    'Burger King',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Stack(
                        children: const [
                          Align(
                            child: Image(
                              width: 300,
                              height: 200,
                              image:
                                  AssetImage('assets/images/burger_king.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Email', icon: Icon(Icons.email)),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Password', icon: Icon(Icons.password)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.blue,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 15),
                            ),
                            onPressed: () {}),
                        const SizedBox(
                          width: 10,
                        ),
                        CupertinoButton(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.red,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: const Text(
                              'Cancelar',
                              style: TextStyle(fontSize: 15),
                            ),
                            onPressed: () {})
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
