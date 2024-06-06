import 'package:flutter/material.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';

class CalorieIntake extends StatefulWidget {
  const CalorieIntake({super.key});

  @override
  State<CalorieIntake> createState() => _CalorieIntakeState();
}

class _CalorieIntakeState extends State<CalorieIntake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(),
        body: SingleChildScrollView(
            child: Column(children: [
          ///The back button and the feature name
          BackAndFeature(
            FeatureName: "খাদ্য তথ্য",
          ),
        ]
            )
        )
    );
  }
}
