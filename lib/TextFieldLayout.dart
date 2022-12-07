import 'package:flutter/material.dart';


class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  State<StatefulWidget> createState() => _TextFieldApp();

}

class _TextFieldApp extends State<TextFieldApp> {
  TextEditingController editingController = TextEditingController();
  String fullName = "";

  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: editingController,
                    onChanged: (text){
                      setState(() {
                        fullName = text;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(editingController.text, style: const TextStyle(
                      color: Colors.black
                  ))
                ],
              ),
            ),
          ),
        )


    );
  }

}