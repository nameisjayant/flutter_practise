import 'package:flutter/material.dart';
import 'package:my_app/Column.dart';
import 'package:my_app/Login.dart';
import 'package:my_app/Row.dart';

void main() => runApp(const RowScreen());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Demo App"),
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(
              Icons.list,
              size: 24.0,
            ),
            color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add,
                //color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                // color: Colors.white,
              ))
        ],
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [text14_500("Hello world,how are you!!"), richText()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _displaySnackBar(context);
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("Hello Drawer"),
        ),
      ),
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_off_outlined), label: "Profile"),
        ],
      ),
    ));
  }
}

_displaySnackBar(BuildContext context) {
  const snackBar = SnackBar(content: Text("Show snackbar"));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Widget text14_500(String text,
    {TextAlign textAlign = TextAlign.start, Color color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.overline,
        decorationStyle: TextDecorationStyle.dashed,
        decorationColor: Colors.red,
        decorationThickness: 4),
    textAlign: textAlign,
    maxLines: 1,
  );
}

Widget richText() {
  return (const Text.rich(TextSpan(text: "Text Span Example", children: [
    TextSpan(
        text: "Terms of use ",
        style: TextStyle(decoration: TextDecoration.underline)),
    TextSpan(text: "and "),
    TextSpan(
        text: "Privacy Policy",
        style: TextStyle(decoration: TextDecoration.underline))
  ])));
}
