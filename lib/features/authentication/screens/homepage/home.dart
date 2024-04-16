import 'package:flutter/material.dart';

import '../../../../common/wigets/appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // First Part
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleWidget(label: 'Circle 1', color: Colors.red),
                CircleWidget(label: 'Circle 2', color: Colors.green),
                CircleWidget(label: 'Circle 3', color: Colors.blue),
                CircleWidget(label: 'Circle 4', color: Colors.orange),
              ],
            ),
          ),
          // Second Part
          Container(
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text('Blue Color Box', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          // Third Part
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton(label: 'Button 1', color: Colors.red),
                      CircularButton(label: 'Button 2', color: Colors.green),
                      CircularButton(label: 'Button 3', color: Colors.blue),
                      CircularButton(label: 'Button 4', color: Colors.orange),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton(label: 'Button 5', color: Colors.purple),
                      CircularButton(label: 'Button 6', color: Colors.yellow),
                      CircularButton(label: 'Button 7', color: Colors.teal),
                      CircularButton(label: 'Button 8', color: Colors.pink),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final String label;
  final Color color;

  CircleWidget({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: Icon(Icons.circle, size: 40, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}

class CircularButton extends StatelessWidget {
  final String label;
  final Color color;

  CircularButton({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Text(label[0], style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}