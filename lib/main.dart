import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trainerr"),
        backgroundColor: Colors.red[600],
      ),
      body:  Center(
          child: TextButton(
            child: Text("I'm on a train"),
            onPressed: () {},
          )
      ),
    );
  }
}
