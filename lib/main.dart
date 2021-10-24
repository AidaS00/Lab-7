import 'package:flutter/material.dart';
import 'dart:math';

// Creates a Material App
void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('Magic 8 ball'),
      ),
      body: Ball(),
    );
  }
}

// Creates a Stateful widget
class Ball extends StatefulWidget {
  Ball({required Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {


            ballNumber = Random().nextInt(5) + 1;
          });
        },


        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}