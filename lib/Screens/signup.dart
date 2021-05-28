import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  Text(
                    "Welcome to Sendry Family",
                    style: GoogleFonts.allertaStencil(
                        textStyle: TextStyle(
                      fontSize: 10.0.sp,
                    )),
                  ),
                  Padding(
                    padding: new EdgeInsets.all(20.0.sp),
                    child: Text(
                      "- SIGN UP -",
                      style: GoogleFonts.allertaStencil(
                          textStyle: TextStyle(
                        fontSize: 25.0.sp,
                      )),
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(
                        top: 0.0.w, left: 5.0.w, right: 5.0.w),
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
                  Padding(
                    padding: new EdgeInsets.all(15.0.sp),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 13.0.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: new EdgeInsets.only(
                              top: 4.0.w,
                              left: 35.0.w,
                              right: 38.0.w,
                              bottom: 4.0.w),
                          primary: Theme.of(context).hintColor),
                    ),
                  ),
                  Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
