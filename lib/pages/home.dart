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
    data =
        data.isEmpty ? ModalRoute.of(context)?.settings.arguments as Map : data;

    String bgImage = data["isDayTime"] == true ? "day.png" : "night.png";
    Color? bgColor =
        data["isDayTime"] == true ? Colors.blue : Colors.indigo[700];
    Color? textColor = data["isDayTime"] == true ? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/$bgImage'),
                fit: BoxFit.cover)),
        child: DefaultTextStyle(
          style: TextStyle(
            color: textColor,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      dynamic result =
                          await Navigator.pushNamed(context, "/location");

                      setState(() {
                        data = {
                          "location": result["location"],
                          "flag": result["flag"],
                          "time": result["time"],
                          "isDayTime": result["isDayTime"]
                        };
                      });
                    },
                    child: Text("Choose Location"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    data["location"],
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    data["time"],
                    style: TextStyle(fontSize: 60),
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
