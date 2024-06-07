import 'package:app/features/authentication/screens/foodIntake/calorieIntake/calorieIntake.dart';
import 'package:app/features/authentication/screens/foodIntake/suggestionbox.dart';
import 'package:app/features/authentication/screens/foodIntake/waterGlass.dart';
import 'package:app/features/authentication/screens/foodIntake/waterIntake/waterIntake.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/wigets/appbar.dart';
import '../../../../common/wigets/backButtonAndFeatureName.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper.dart';
import 'linechart.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///The back button and the feature name
            BackAndFeature(
              FeatureName: "আজকের খাবার তথ্য",
            ),

            ///Two buttons shows detailed information
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
              children: [
                // Rounded rectangle button
                ///Button for today's detailed information
                ElevatedButton(
                  // Alternatively use TextButton for no elevation
                  onPressed: () => print('Button Pressed!'),
                  child: Text(
                    "আজকের বিস্তারিত প্রতিবেদন",
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: TColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Adjust corner radius
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                // Add some horizontal spacing between buttons
                // Icon button

                /// Button to show selected date data
                IconButton(
                  icon: Icon(Icons.calendar_month_rounded),
                  iconSize: THelperFunction.getScreenHeight() * 0.05,
                  // Replace with your desired icon
                  onPressed: () => print('Icon Button Pressed!'),
                ),
              ],
            ),

            SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///Graph and water glass
            Row(
              children: [
                ///Graph
                Column(
                  children: [
                    Text(
                      "আজকের ক্যালরি গ্রহণ",
                    ),
                    SizedBox(
                      height: THelperFunction.getScreenHeight() * 0.3,
                      width: THelperFunction.getScreenWidth() * 0.6,
                      child: DailyDataChart(),
                    ),
                  ],
                ),

                ///Glass
                SizedBox(
                  height: THelperFunction.getScreenHeight() * 0.3,
                  width: THelperFunction.getScreenWidth() * 0.4,
                  child: AnimatedGlass(
                      fillPercentage: 0.60), // Set your fill percentage here
                ),
              ],
            ),

            SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///Suggestion box
            suggestionbox(),

            SizedBox(
              height: TSize.spaceBtwItems,
            ),

            ///Bottom Two buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  // Alternatively use TextButton for no elevation
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalorieIntake()));
                  },
                  child: Text(
                    "খাদ্য তথ্য দিন ",
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: TColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Adjust corner radius
                    ),
                  ),
                ),
                SizedBox(
                  width: TSize.spaceBtwItems,
                ),
                ElevatedButton(
                  // Alternatively use TextButton for no elevation
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WaterIntake()));
                  },
                  child: Text(
                    "পানি পানের তথ্য দিন ",
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: TColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Adjust corner radius
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
