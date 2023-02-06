import 'package:flutter/material.dart';
import 'package:navigation_and_routing/main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen")
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>{
            Navigator.pop(context)
          },
          child: Text("Go Back")
        )
      )
    );
  }
}