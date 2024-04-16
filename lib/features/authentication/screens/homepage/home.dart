import 'package:app/features/authentication/screens/homepage/circleButton.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

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
              height: THelperFunction.getScreenHeight()*0.35,
              decoration: BoxDecoration(
                color: TColors.primary,
                borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
              ),
              child: Center(
                child: Text(
                  'Rounded Rectangle',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: TSize.spaceBtwSections,),
          ///Part 3
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
            [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularButton(val: 'দৈনিক খাবার তথ্য'),
                  CircularButton(val: 'দুগ্ধ পান তথ্য'),
                  CircularButton(val: 'রক্তের শর্করার তথ্য'),
                  CircularButton(val: 'চ্যাট ফোরাম'),
                ],
              ),
              SizedBox(height: TSize.sm,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularButton(val: 'দৈনন্দিন কাজকর্ম'),
                  CircularButton(val: 'বিনোদন'),
                  CircularButton(val: 'জিডিএম এবং গর্ভাবস্থার তথ্য'),
                  CircularButton(val: 'প্রয়োজনীয় উপদেশ'),
                ],
              ),
            ],
          )


        ],
      ),
    );
  }
}

