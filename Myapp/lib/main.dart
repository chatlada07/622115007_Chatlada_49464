
import 'package:app2/pages/cal.dart';
import 'package:app2/pages/contact.dart';
import 'package:app2/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage()
      );
    }
  }

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  final tabs = [HomePage(), CalculatePage(), ContactPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("calculater application",
              style: TextStyle(
                   fontSize: 20, color: Colors.white)),
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_repair_service), label: "Homepage"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculate"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail_sharp), label: "Contact")
          ],
          onTap: (index){
            setState(() {
              print(index);
              _currentIndex = index;
            });
          },
         
        ),
    );
  }
}