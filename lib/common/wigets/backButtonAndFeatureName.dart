import 'package:app/utils/constants/size.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class BackAndFeature extends StatelessWidget {
  final String FeatureName;
  const BackAndFeature({super.key, required this.FeatureName});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),

        SizedBox(width: TSize.spaceBtwItems,),

        Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              FeatureName,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: TSize.fontSizeLg),
            ),
          ),

      ],
    );
  }
}
