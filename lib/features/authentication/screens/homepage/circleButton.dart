import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String val;
  const CircularButton({required this.val});

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          ElevatedButton(onPressed: () {},
              child: Icon(Icons.circle), // Custom icon for the circular button
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), // Make the button circular
                  padding: EdgeInsets.all(18) // Adjust padding as needed
              )
          ),
          Padding(
            padding: EdgeInsets.all(5),
              child: Text(val,textAlign: TextAlign.center,maxLines: 2)
          )
        ],
      );
  }
}
