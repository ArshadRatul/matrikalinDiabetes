import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../../common/wigets/appbar.dart';
import '../../../../utils/constants/colors.dart';
import 'circleData.dart';


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
          )

          ///Part 2


          ///Part 3
        ],
      ),
    );
  }
}

