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
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ///Part 1
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
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.notification, size: 36,),)
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
          ///Part 3
          
          Container(
              height: THelperFunction.getScreenHeight()*0.3,
              width: THelperFunction.getScreenWidth()*0.9,
              child: GridView.count(crossAxisCount: 4, mainAxisSpacing: 15,
                children: [
                  CircularButton(val: 'দৈনিক খাবার তথ্য',logoname: "",function: "s",),
                  CircularButton(val: 'দুগ্ধ পান তথ্য',logoname: Timages.food,function: "s",),
                  CircularButton(val: 'রক্তের শর্করার তথ্য',logoname: Timages.food,function: "s",),
                  CircularButton(val: 'চ্যাট ফোরাম',logoname: Timages.food,function: "s",),
                  CircularButton(val: 'দৈনন্দিন কাজকর্ম',logoname: Timages.food,function: "s",),
                  CircularButton(val: 'বিনোদন',logoname: Timages.food,function: "s",),
                  CircularButton(val: 'জিডিএম এবং গর্ভাবস্থার তথ্য',logoname: Timages.food,function: "s",),
                  CircularButton(val: 'প্রয়োজনীয় উপদেশ',logoname: Timages.food,function: "s",),
                ],
              )
          )


        ],
      ),
    );
  }
}

