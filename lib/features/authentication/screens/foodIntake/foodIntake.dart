import 'package:flutter/material.dart';

import '../../../../common/wigets/appbar.dart';

class FoodIntake extends StatefulWidget {
  const FoodIntake({super.key});

  @override
  State<FoodIntake> createState() => _FoodIntakeState();
}

class _FoodIntakeState extends State<FoodIntake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body:
      SingleChildScrollView(

      ),
    );
  }
}
