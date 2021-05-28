import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/login.dart';
import 'Screens/signup.dart';
import 'Screens/splashscreen.dart';
import 'Util/apptheme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/': (context) => SplashScreen(),
                '/login': (context) => Login(),
                '/signup': (context) => SignUp(),
              },
              theme: AppTheme.lightTheme,
            ));
  }
}
