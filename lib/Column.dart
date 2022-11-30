import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [box(Colors.black), box(Colors.red), box(Colors.yellow)],
        ),
      )),
    ));
  }
}

Widget box(Color color) {
  return (Container(
    width: 50.0,
    height: 50.0,
    color: color,
  ));
}
