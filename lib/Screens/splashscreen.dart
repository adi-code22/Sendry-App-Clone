import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: new EdgeInsets.only(top: 0.3.sh),
                  child: Container(
                    color: Colors.white,
                    height: 50.0.h,
                    width: 50.0.w,
                    child: Image(
                      image: AssetImage('assets/splashlogo.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.only(
                      top: 0.03.sh, left: 0.07.sh, right: 0.07.sh),
                  child: Image(
                    image: AssetImage('assets/App name (3).png'),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 0.4.sh),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
