import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper.dart';

class CircleData extends StatelessWidget {
  final String label;
  final String value1;
  final String value2;
  const CircleData({required this.label, required this.value1, required this.value2});

  @override
  Widget build(BuildContext context) {

    return Column(
        children: [
          ///The Circle where the information will be shown
          Container(
            width: THelperFunction.getScreenWidth()*0.2, // Set the width
            height: THelperFunction.getScreenWidth()*0.2, // Set the height
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: TColors.primary, // Set the background color
            ),

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(value1, textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                  Text(value2, textAlign: TextAlign.center, style: TextStyle(fontSize: 10),)],
                  )

          ),

          ///The lable for the circle
          Container(
            width: THelperFunction.getScreenWidth()*0.2, // Set the width
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(label,textAlign: TextAlign.center,maxLines: 2,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,// Text color
                ),
              ),
            ),

          ),

        ]
    );
  }
}

