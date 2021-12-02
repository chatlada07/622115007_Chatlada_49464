import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {

  TextEditingController quantity = TextEditingController();
  TextEditingController result = TextEditingController();
  TextEditingController Peanutprice = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = "buy 1 get 1 rabbit";
  }

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
                  "assets/snowball.jpg",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Calculate Program",
                    style: TextStyle(
                        )),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                      labelText: "carrot amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

                TextField(
                  controller: Peanutprice,
                  decoration: InputDecoration(
                      labelText: "Rabbit amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                    onPressed: () {
                      var cal = double.parse(quantity.text) + double.parse(Peanutprice.text);
                      print("rabbit quantity: ${quantity.text} Total: ${cal} THB");

                      setState(() {
                        result.text = "total: ${cal} carrot free :D";
                      });

                    },
                    child: Text("calculate"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xffb74050)),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 20, 50, 20)),
                        textStyle: MaterialStateProperty.all((TextStyle(fontSize: 30))),
                        ),
                        ),
                

                SizedBox(
                  height: 20,
                ),
                Text(result.text,
                    style: TextStyle(
                        ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}