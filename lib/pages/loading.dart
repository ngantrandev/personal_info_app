import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    Response res =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));

    Map data = jsonDecode(res.body);

    print(data);
    print(data["title"]);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Loading...")),
    );
  }
}
