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
    // new Future.delayed(const Duration(seconds: 5), () {
    //   Navigator.pushReplacementNamed(context, '/login');
    // });
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              height: 50.0.h,
              width: 50.0.w,
              child: Image(
                image: AssetImage('assets/splashlogo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "S E N D R Y",
                textScaleFactor: 1,
                style: GoogleFonts.allertaStencil(
                    textStyle: TextStyle(
                  fontSize: 50.0.w,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
