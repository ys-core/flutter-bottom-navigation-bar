import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  List<String> states = ['first', 'second', 'third', 'four', 'five', 'six'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("HOMEPAGE"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              height: 40,
              width: 100,
              child: RaisedButton(
                child: Text('添加资讯'),
                color: Colors.redAccent,
                textColor: Colors.white,
                onPressed: () {
                  // handlePress();
                },
              ),
            ),
            Column(
              children: states
                  .map(
                    (e) => Card(
                        child: Column(
                      children: <Widget>[
                        // Image.asset("assets/vehicle.jpg"),
                        Text(e),
                      ],
                    )),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
