import 'package:app/utils/constants/size.dart';
import 'package:app/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget{
  const Appbar({super.key});


  @override
  Widget build(BuildContext context) {
    return
      PreferredSize(
        preferredSize: Size.fromHeight(THelperFunction.getAppBarHeight()),
        child: AppBar(
          backgroundColor: TColors.primary,
          title:
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ///The SOS button
              Padding(
                padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(14.0)),
                      elevation: MaterialStateProperty.all<double>(5.0),
                    ),
                    child: Text("SOS")),
              ),

              Text('মাতৃকালীন ডায়াবেটিস', textAlign: TextAlign.center,),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Add your menu button onPressed logic here
              },
            ),
          ],
        ),
      );


  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}