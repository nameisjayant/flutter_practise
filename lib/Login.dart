import 'package:flutter/material.dart';

// void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LoginScreenWidget(),
      ),
    );
  }
}

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenStateWidget();
}

class _LoginScreenStateWidget extends State<LoginScreenWidget> {
  late TextEditingController username;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        commonTextField(username, "Username"),
        commonTextField(password, "Password"),
        commonButton("Login", () {
          if (username.text == "jks" && password.text == "123") {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Login Successfully")));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Login Failed")));
          }
        })
      ],
    ));
  }
}

Widget commonTextField(TextEditingController text, String label) {
  return (Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      controller: text,
      decoration: InputDecoration(label: Text(label)),
    ),
  ));
}

Widget commonButton(String text, Function onClick) {
  return (OutlinedButton(
    onPressed: () {
      onClick();
    },
    style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black),
        backgroundColor: MaterialStateProperty.all(Colors.blue)),
    child: Text(text),
  ));
}
