import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class History extends StatefulWidget {
  History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('History'),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Card(
              elevation:20,
              child: Container(
                // padding:EdgeInsets.all(20),
                // height: 80,
                width:100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Date',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('12/12/20',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                      ],
                    ),
                    Column(
                    children: <Widget>[
                      Text('Time',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('9.00 PM',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                    ],
                    ),
                    Column(
                    children: <Widget>[
                      Text('Trip',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Aga khan - Nyalenda',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      FlatButton.icon(
                        icon: Icon(Icons.delete), 
                        onPressed: () {}, label: Text(''),
                      )
                    ],
                  ),
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}