import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/images_string.dart';
import '../signup/signup.dart';

class CircularButton extends StatelessWidget {
  final String val;
  final String logoname;
  final String function;
  const CircularButton({required this.val, required this.logoname, required this.function});

  @override
  Widget build(BuildContext context) {

    return
      Column(
        children: [

          // ElevatedButton(onPressed: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => SignupPage())
          //   );
          // },
          //     child: Icon(Icons.dinner_dining_outlined), // Custom icon for the circular button
          //     style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.white,
          //         shape: CircleBorder(), // Make the button circular
          //         padding: EdgeInsets.all(15) // Adjust padding as needed
          //     )
          // ),
          Ink(
            decoration: const ShapeDecoration(
              color: TColors.primary,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(
                Icons.restaurant,
                color: Colors.black,
                size: THelperFunction.getScreenWidth()*0.1,
              ),
              onPressed: () {
                // Handle button press
                print('IconButton pressed');
              },
            ),
          ),


          Expanded(child: Text(val,textAlign: TextAlign.center,maxLines: 3)),

        ],
      );
  }
}
