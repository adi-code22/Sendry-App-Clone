import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

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
    return LayoutBuilder(builder: (context, contraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizerUtil().init(contraints, orientation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => SignUp(),
              '/login': (context) => Login(),
              '/signup': (context) => SignUp(),
            },
            theme: AppTheme.lightTheme,
          );
        },
      );
    });
  }
}
