import 'package:flutter/material.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({super.key});

  @override
  State<WaterIntake> createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body:
      SingleChildScrollView(
      child: Column(
      children: [
      ///The back button and the feature name
      BackAndFeature(FeatureName: "পানি পানের তথ্য",),
            ]
          )
        )
      );
  }
}
