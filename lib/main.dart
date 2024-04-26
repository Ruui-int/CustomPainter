import 'package:custom_paint_rudy/painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('1390-22-14633',
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.purple,
            centerTitle: true,
          ),
          body: Center(
            child: SizedBox(
              width: 250,
              height: 500,
              //color: const Color.fromARGB(255, 232, 198, 195),
              child: CustomPaint(
                painter: MyPainter(), // Utiliza tu CustomPainter aquí
              ),
            ),
          ),
        ));
  }
}
