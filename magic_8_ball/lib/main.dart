import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ),
);



class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          title : Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,),
      body: Ball()

    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballnumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){setState(() {ballnumber = Random().nextInt(5)+1;});},
        child: Image.asset('images/ball$ballnumber.png'),
    ),
    );
  }
}