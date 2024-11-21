import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: Text("Hi! I'm Pisey",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 50,
              )),
        ),
      ),
    ),
  );
}
