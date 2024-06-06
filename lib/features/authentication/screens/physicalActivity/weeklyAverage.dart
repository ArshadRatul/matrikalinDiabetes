import 'package:flutter/material.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';

class WeeklyAverage extends StatefulWidget {
  const WeeklyAverage({super.key});

  @override
  State<WeeklyAverage> createState() => _WeeklyAverageState();
}

class _WeeklyAverageState extends State<WeeklyAverage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(),
        body:
        SingleChildScrollView(
            child: Column(
                children: [
                  ///The back button and the feature name
                  BackAndFeature(FeatureName: "দৈনন্দিন কার্যক্রম",),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("সাপ্তাহিক গড়",maxLines: 2, style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                        textAlign: TextAlign.center,),
                    ],
                  ),

                ]
            )
        )
    );
  }
}

