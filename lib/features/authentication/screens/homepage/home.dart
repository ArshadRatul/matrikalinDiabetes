import 'package:app/features/authentication/screens/foodIntake/foodIntake.dart';
import 'package:app/features/authentication/screens/homepage/circleButton.dart';
import 'package:app/utils/constants/images_string.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/wigets/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import 'circleData.dart';

///The body is divided into three parts the part 1,2 and 3. where part 1 contains only the informations,
///part 2  contains the rectangular box
///part 3 contains 8 buttons
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ///Part 1 Four circles representing the data from BGL, medicine, waterintake and calorie intake.
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleData(label:'রক্তের শর্করার লেভেল', value1: '৫.৫', value2: 'mg/dL',),
                  CircleData(label: 'ক্যালোরি খেয়েছেন',value1: '৫০০', value2: 'ক্যাল',),
                  CircleData(label: 'পানি খেয়েছেন',value1: '৪', value2: 'গ্লাস',),
                  CircleData(label: 'ওষুধ     বাকি',value1: '২', value2: 'টি',)
                ],
              ),
            ),
        
            ///Part 2
            Center(
              child: Container(
                width: THelperFunction.getScreenWidth()*0.9,
                height: THelperFunction.getScreenHeight()*0.36,
                decoration: BoxDecoration(
                  color: TColors.primary,
                  borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
                ),
                child: Column(
        
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("দৈনিক করণীয় এবং রিমাইন্ডার",maxLines: 2, style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ) , textAlign: TextAlign.center,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.black, size: THelperFunction.getScreenWidth()*0.1,),)
                      ],
                    ),
                    Container(
                      width: THelperFunction.getScreenHeight()*0.36*0.98,
                      height: THelperFunction.getScreenWidth()*0.9*0.6,
                      child: ListView(
                        children: [
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhsdsadbshjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagbhdbasddasdhjkabdg"),
                          Text("sdagbhdbshjkabdg"),
                          Text("sdagsdadbhdbshjkabdg"),
                          Text("gggggggggggggggg"),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
            SizedBox(height: TSize.spaceBtwItems,),


            ///Part 3 For feature buttons
            
            Container(
                height: THelperFunction.getScreenHeight()*0.3,
                width: THelperFunction.getScreenWidth()*0.9,
                child: GridView.count(crossAxisCount: 4, mainAxisSpacing: 15,
                  children: [
                    CircularButton(val: 'দৈনিক খাবার তথ্য',logoname: Icons.restaurant,destination: FoodIntake() ,),
                    CircularButton(val: 'দুগ্ধ পান তথ্য',logoname: Icons.child_care,destination: FoodIntake(),),
                    CircularButton(val: 'রক্তের শর্করার তথ্য',logoname: Icons.bloodtype,destination: FoodIntake(),),
                    CircularButton(val: 'চ্যাট ফোরাম',logoname: Icons.chat,destination: FoodIntake(),),
                    CircularButton(val: 'দৈনন্দিন কাজকর্ম',logoname: Icons.directions_run,destination: FoodIntake(),),
                    CircularButton(val: 'বিনোদন',logoname: Icons.videogame_asset,destination: FoodIntake(),),
                    CircularButton(val: 'জিডিএম এবং গর্ভাবস্থার তথ্য',logoname: Icons.auto_stories,destination: FoodIntake(),),
                    CircularButton(val: 'প্রয়োজনীয় উপদেশ',logoname: Icons.tips_and_updates,destination: FoodIntake(),),
                  ],
                )
            )
        
        
          ],
        ),
      ),
    );
  }
}

