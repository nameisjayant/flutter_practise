import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

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
      body: const Center(child: Text("Hello world2")),
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
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined),label: "Profile" ),
        ],
      ),
    ));
  }


 
}

  _displaySnackBar(BuildContext context) {
    const snackBar = SnackBar(content: Text("Show snackbar"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }