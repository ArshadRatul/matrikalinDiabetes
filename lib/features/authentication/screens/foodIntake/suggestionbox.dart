import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper.dart';

class suggestionbox extends StatelessWidget {
  const suggestionbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      /// The square box where the reminder and suggestions are shown
      child: Container(
          width: THelperFunction.getScreenWidth()*0.9,
          height: THelperFunction.getScreenHeight()*0.25,
          decoration: BoxDecoration(
            color: TColors.primary,
            borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
          ),
          child: Column(

            children: [
              /// The heading
              Padding(
                padding: EdgeInsets.all(7),
                child: Text("আপনার করণীয় ",maxLines: 2, style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.center,),
              ),

              ///The list of suggestions and reminder
              Container(
                width: THelperFunction.getScreenHeight()*0.36*0.98,
                height: THelperFunction.getScreenWidth()*0.9*0.4,
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
    );
  }
}
