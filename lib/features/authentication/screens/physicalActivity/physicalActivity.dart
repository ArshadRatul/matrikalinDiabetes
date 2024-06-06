import 'package:app/features/authentication/screens/physicalActivity/weeklyAverage.dart';
import 'package:flutter/material.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import 'package:app/features/authentication/screens/foodIntake/suggestionbox.dart';
import 'package:app/features/authentication/screens/homepage/circleButton.dart';
import 'package:app/utils/constants/images_string.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/wigets/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../physicalActivity/physicalActivity.dart';



class PhysicalActivity extends StatefulWidget {
  const PhysicalActivity({super.key});

  @override
  State<PhysicalActivity> createState() => _PhysicalActivityState();
}

class _PhysicalActivityState extends State<PhysicalActivity> {
  final TextEditingController _textController = TextEditingController();
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

                  // Adding text fields part 1
                  Center(
                    /// Adding text fields part 1
                    child: Container(
                        width: THelperFunction.getScreenWidth()*0.9,
                        height: THelperFunction.getScreenHeight()*0.18,
                        decoration: BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
                        ),
                        child: Column(

                          children: [
                            /// First question for text field
                            SizedBox(height: TSize.spaceBtwItems,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("আজ কতক্ষণ হেঁটেছেন?",maxLines: 2, style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                  textAlign: TextAlign.center,),

                              ],
                            ),

                            // Adding the text field
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: THelperFunction.getScreenWidth() * 0.6,
                                    child: TextField(
                                      controller: _textController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        labelText: 'দয়া করে সময় লিখুন',
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: TSize.spaceBtwItems,),
                                  // Adding icon button
                                  IconButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0), // Adjust border radius as needed
                                        side: BorderSide(color: Colors.black, width: 2), // Adjust border color and width as needed
                                      ),
                                    ),
                                    icon: Icon(
                                      Icons.save,
                                      color: Colors.black,
                                      size: THelperFunction.getScreenWidth() * 0.1,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                    ),
                  ),
                  SizedBox(height: TSize.spaceBtwItems,),


                  // Adding text fields part 2
                  Center(
                    /// Adding text fields part 2
                    child: Container(
                        width: THelperFunction.getScreenWidth()*0.9,
                        height: THelperFunction.getScreenHeight()*0.18,
                        decoration: BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
                        ),
                        child: Column(

                          children: [
                            /// Second question for text field
                            SizedBox(height: TSize.spaceBtwItems,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("আজ কতক্ষণ ঘুমিয়েছিলেন?",maxLines: 2, style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                  textAlign: TextAlign.center,),

                              ],
                            ),

                            // Adding the text field
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: THelperFunction.getScreenWidth() * 0.6,
                                    child: TextField(
                                      controller: _textController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        labelText: 'দয়া করে সময় লিখুন',
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.save,
                                      color: Colors.black,
                                      size: THelperFunction.getScreenWidth() * 0.1,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                    ),
                  ),
                  SizedBox(height: TSize.spaceBtwItems,),


                  // Adding text fields part 3
                  Center(
                    /// Adding text fields part 3
                    child: Container(
                        width: THelperFunction.getScreenWidth()*0.9,
                        height: THelperFunction.getScreenHeight()*0.18,
                        decoration: BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
                        ),
                        child: Column(

                          children: [
                            /// Third question for text field
                            SizedBox(height: TSize.spaceBtwItems,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("আজ কতক্ষণ ব্যয়াম করেছেন?",maxLines: 2, style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                  textAlign: TextAlign.center,),

                              ],
                            ),

                            // Adding the text field
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: THelperFunction.getScreenWidth() * 0.6,
                                    child: TextField(
                                      controller: _textController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        labelText: 'দয়া করে সময় লিখুন',
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.save,
                                      color: Colors.black,
                                      size: THelperFunction.getScreenWidth() * 0.1,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                    ),
                  ),
                  SizedBox(height: TSize.spaceBtwItems,),


                  // Button for weekly average
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton( // Alternatively use TextButton for no elevation
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WeeklyAverage())
                          );
                        },
                        child: Text("সাপ্তাহিক গড়",),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: TColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Adjust corner radius
                          ),
                        ),
                      ),
                    ],
                  )

                ]
            )
        )
    );
  }
}

