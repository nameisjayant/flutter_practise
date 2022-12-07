import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          body:
        //   Container(
        // color: Colors.blue,
        // child:
        Column(
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [box(Colors.black), box(Colors.red), box(Colors.yellow)],
        ),
     // )
      ),
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
