import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "S E N D R Y",
                      style: GoogleFonts.allertaStencil(
                          textStyle: TextStyle(
                        fontSize: 30.0.sp,
                      )),
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(
                        top: 15.0.w, left: 5.0.w, right: 5.0.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0.sp),
                        labelText: "E-Mail",
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 10.0.sp),
                        fillColor: Theme.of(context).accentColor,
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      },
                      validator: (value) =>
                          value!.isEmpty ? "E-Mail is required" : null,
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(
                        top: 5.0.w, left: 5.0.w, right: 5.0.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0.sp),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 10.0.sp),
                        fillColor: Theme.of(context).accentColor,
                        filled: true,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                      validator: (value) =>
                          value!.isEmpty ? "Password is required" : null,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: new EdgeInsets.only(right: 3.0.w),
                      child: TextButton(
                        child: Text(
                          "Forget password ?",
                          style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontSize: 10.0.sp),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 13.0.sp),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: new EdgeInsets.only(
                            top: 4.0.w,
                            left: 38.0.w,
                            right: 38.0.w,
                            bottom: 4.0.w),
                        primary: Theme.of(context).hintColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
