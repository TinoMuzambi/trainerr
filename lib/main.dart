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
          child: Column(
            children: [
              TextButton(
                child: Text("I'm on a train"),
                onPressed: () {},
              ),
              TextButton(
                child: Text("I'm about to get on a train"),
                onPressed: () {},
              ),
              TextButton(
                child: Text("I just want the schedule"),
                onPressed: () {},
              )
            ],
          )
      ),
    );
  }
}
