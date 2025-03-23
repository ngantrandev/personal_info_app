import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;

    print(data);

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/location");
            },
            child: Text("Choose Location"),
          ),
        ],
      )),
    );
  }
}
