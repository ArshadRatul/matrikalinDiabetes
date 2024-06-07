import 'package:flutter/material.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/helpers/helper.dart';

class CalorieIntake extends StatefulWidget {
  const CalorieIntake({super.key});


  @override
  State<CalorieIntake> createState() => _CalorieIntakeState();
}

class _CalorieIntakeState extends State<CalorieIntake> {
  List<Map<String, dynamic>> data = [
    {'সময় ': 1, 'name': 'আমিষ','amount': '১/২'},
    {'সময় ': 2, 'name': 'আমিষ',  'amount': '১/২'},
    {'সময় ': 3, 'name': 'আমিষ',  'amount': '১/২'},
    {'সময় ': 4, 'name': 'আমিষ',  'amount': '১/২'},
    {'সময় ': 5, 'name': 'আমিষ',  'amount': '১/২'},
    {'সময় ': 6, 'name': 'আমিষ',  'amount': '১/২'},
    {'সময় ': 7, 'name': 'আমিষ',  'amount': '১/২'},
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


                  centerTable(), ///Table showing how much Calorie was intake

                  SizedBox(height: TSize.spaceBtwSections,),

                  ///Buttons to input calorie intake
                  ElevatedButton(
                    // Alternatively use TextButton for no elevation
                    onPressed: () {

                    },
                    child: Text(
                      "খাদ্য তথ্য যোগ করুন ",
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: TColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(30.0), // Adjust corner radius
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }

  Center centerTable() {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        color: TColors.primary,
        height: THelperFunction.getScreenHeight() * 0.65,
        width: THelperFunction.getScreenWidth() * 0.9,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(width: 1.0, color: Colors.black),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(4),
              2: FlexColumnWidth(3),
              3: FlexColumnWidth(2),
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
                            child: Text('খাদ্যের ধরণ',textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold)))),
                  ),
                  Container(
                    color: TColors.secondary,
                    alignment: Alignment.center,
                    height: THelperFunction.getScreenHeight()*0.08,
                    child: TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('পরিমাণ',textAlign: TextAlign.center,
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
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(row['amount'],textAlign: TextAlign.center,))),
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
