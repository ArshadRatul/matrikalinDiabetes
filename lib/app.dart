import 'package:flutter/material.dart';
import 'package:app/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/login/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      // themeMode: ThemeMode.system,
      // theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.darkTheme,
      title: 'Welcome',
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
    );
  }
}
