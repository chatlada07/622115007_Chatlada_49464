import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("calculater application",
              ),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/racoon.jpg",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Calculate Program",
                    ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Apple amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white),
                    onPressed: () {},
                    child: Text("calculate",
                        style: TextStyle(
                            ))),
                SizedBox(
                  height: 20,
                ),
                Text("Buy 2 rabbits, get 1 free apple.",
                    )
              ],
            ),
          ),
        ),
      ],
    );
  }
}