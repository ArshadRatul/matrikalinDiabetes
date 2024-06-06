import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../../../common/wigets/appbar.dart';
import '../../../../../common/wigets/backButtonAndFeatureName.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({super.key});

  @override
  State<WaterIntake> createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  List<Map<String, dynamic>> data = [
    {'সময় ': 1, 'name': 'John Doe'},
    {'সময় ': 2, 'name': 'Jane Smith'},
    {'সময় ': 3, 'name': 'Mike Johnson'},
    {'সময় ': 4, 'name': 'Sarah Brown'},
    {'সময় ': 5, 'name': 'Chris Lee'},
    {'সময় ': 6, 'name': 'Patricia Miller'},
    {'সময় ': 7, 'name': 'James Wilson'},
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

                ///Table

                centerTable(),

                ///Buttons
                Column(
                  children: [


                  ],
                )
              ]
            )
        )
    );
  }

  Center centerTable() {
    return Center(
                child: Container(

                  color: TColors.primary,
                  height: THelperFunction.getScreenHeight() * 0.5,
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
                              child: TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('সময় ',textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold,)))),
                            ),
                            Container(
                              color: TColors.secondary,
                              child: TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('কত গ্লাস পানি খেয়েছেন',textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold)))),
                            ),
                            Container(
                              color: TColors.secondary,
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
                                      child: Text(row['সময় '].toString()))),
                              TableCell(
                                  child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(row['name']))),
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
