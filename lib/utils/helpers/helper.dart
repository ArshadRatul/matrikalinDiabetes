

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class THelperFunction{
  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getAppBarHeight(){
    return kToolbarHeight;
  }
  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }
}