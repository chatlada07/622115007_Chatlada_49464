import 'dart:convert';

import 'package:app3/pages/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News of today"),
          backgroundColor: Colors.pink[300],
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: FutureBuilder(
              builder: (context, snapshot) {
                var data = json.decode(snapshot.data.toString());
                return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return MyBox(data[index]['title'],
                          data[index]['subtitle'], data[index]['img_url']);
                    },
                    itemCount: data.length);
              },
              future:
                  DefaultAssetBundle.of(context).loadString('assets/data.json'),
            )));
  }

  Widget MyBox(String title, String subtitle, String img_url) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
          color: Colors.pink[600],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(img_url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.5), BlendMode.lighten))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          TextButton(
              onPressed: () {
                print("next page >>");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Text("read more")),
        ],
      ),
    );
  }
}
