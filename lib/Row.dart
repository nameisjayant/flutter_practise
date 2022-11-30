import 'package:flutter/material.dart';
import 'package:my_app/Column.dart';


class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (
        const MaterialApp(
          home: Scaffold(
            body: RowWidget(),
          ),
        )
    );
  }

}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (
        Container(
          height: double.infinity,
          color: Colors.blueGrey,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            verticalDirection: VerticalDirection.down,
            children: [
              box(Colors.black),
              box(Colors.red),
              box(Colors.orangeAccent)
            ],
          ),
        )
    );
  }


}