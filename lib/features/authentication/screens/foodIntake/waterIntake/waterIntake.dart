import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/size.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({super.key});

  @override
  State<WaterIntake> createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  List<Map<String, dynamic>> data = [
    {'সময় ': 1, 'name': '১/২'},
    {'সময় ': 2, 'name': '১'},
    {'সময় ': 3, 'name': '১'},
    {'সময় ': 4, 'name': '২'},
    {'সময় ': 5, 'name': '২'},
    {'সময় ': 6, 'name': '২'},
    {'সময় ': 7, 'name': '২'},
  ];
  void _deleteRow(int id) {
    setState(() {
      data.removeWhere((element) => element['সময় '] == id);
    });
  }
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

                ///Table showing how much water was intake

                centerTable(),

                SizedBox(height: TSize.spaceBtwSections,),

                ///Buttons to input water intake
                Text("আপনি কত গ্লাস পানি খেয়েছেন ?", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () { }, icon: Icon(Icons.science_outlined, size: THelperFunction.getScreenWidth()*0.25),),
                    IconButton(onPressed: () { }, icon: Icon(Icons.science_outlined, size: THelperFunction.getScreenWidth()*0.25)),
                    IconButton(onPressed: () { }, icon: Icon(Icons.science_outlined, size: THelperFunction.getScreenWidth()*0.25)),

                  ],
                ),
              ]
            )
        )
    );
  }

  Center centerTable() {
    return Center(
                child: Container(

                  color: TColors.primary,
                  height: THelperFunction.getScreenHeight() * 0.55,
                  width: THelperFunction.getScreenWidth() * 0.9,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Table(
                      border: TableBorder.all(width: 1.0, color: Colors.black),
                      columnWidths: const <int, TableColumnWidth>{
                        0: FlexColumnWidth(2),
                        1: FlexColumnWidth(5),
                        2: FlexColumnWidth(3),
                      },
                      children: [
                        TableRow(
                          children: [
                            Container(
                              color: TColors.secondary,
                              alignment: Alignment.center,
                              height: THelperFunction.getScreenHeight()*0.08,
                              child: TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('সময় ',textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold,)))),
                            ),
                            Container(
                              color: TColors.secondary,
                              alignment: Alignment.center,
                              height: THelperFunction.getScreenHeight()*0.08,
                              child: TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('কত গ্লাস পানি খেয়েছেন',textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold)))),
                            ),
                            Container(
                              color: TColors.secondary,
                              alignment: Alignment.center,
                              height: THelperFunction.getScreenHeight()*0.08,
                              child: TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('মুছে ফেলুন', textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold)))),
                            ),
                          ],
                        ),
                        for (var row in data)
                          TableRow(
                            children: [
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(row['সময় '].toString(),textAlign: TextAlign.center,))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(row['name'],textAlign: TextAlign.center,))),
                              TableCell(
                                child: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    _deleteRow(row['সময় ']);
                                  },
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              );
  }
}
