import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Button Example',
      home: ButtonExample(),
    );
  }
}

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  List<bool> isSelect = [
    false,
    false,
    false,
    false
  ]; // List to keep track of button states

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Selectable Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Align buttons to center
          children: List.generate(4, (index) {
            return SizedBox(
              width: 400,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Toggle the state of the corresponding button
                    isSelect[index] = !isSelect[index];
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isSelect[index] ? Colors.blue[500] : Colors.blue[50],
                  foregroundColor:
                      isSelect[index] ? Colors.white : Colors.black,
                ),
                child: Text(isSelect[index] ? 'Selected' : 'Not Selected'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
