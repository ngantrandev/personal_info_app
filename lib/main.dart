import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InfoCard(),
  ));
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Info Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.grey[800],
          ),
          Text("NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )),
          SizedBox(height: 10.0),
          Text("Ngạn DZ",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 30.0),
          Text("Age",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )),
          SizedBox(height: 10.0),
          Text("18",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 30.0),
          Row(
            children: [
              Icon(Icons.email, color: Colors.grey[400]),
              SizedBox(width: 10.0),
              Text("tranvanngan.work@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
