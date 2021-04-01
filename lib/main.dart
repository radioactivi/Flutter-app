import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int location = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
          title: Text("Black Holes Search"),
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 0.0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          location += 2;
          setState(() {
            location += 2;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sagittirues2.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
                fontSize: 19.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Sagittarius A ',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Location',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
                fontSize: 19.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$location',
              style: TextStyle(
                color: Colors.lightGreenAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'gulcindenirkiran@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
