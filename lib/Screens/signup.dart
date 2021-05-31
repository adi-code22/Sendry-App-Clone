import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    padding: new EdgeInsets.only(top: 0.05.sh),
                    child: Text(
                      "S E N D R Y",
                      style: GoogleFonts.allertaStencil(
                          textStyle: TextStyle(
                        fontSize: 0.07.sh,
                      )),
                    ),
                  ),
                  Text(
                    "Welcome to Sendry Family",
                    style: GoogleFonts.allertaStencil(
                        textStyle: TextStyle(
                      fontSize: 0.02.sh,
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
                        top: 0.05.sw, left: 0.05.sw, right: 0.05.sw),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.018.sh),
                        labelText: "E-Mail",
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 0.020.sh),
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
                        top: 5.0.w, left: 0.05.sw, right: 0.05.sw),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.018.sh),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 0.020.sh),
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
                    padding: new EdgeInsets.all(0.02.sh),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Log In",
                        style: TextStyle(fontSize: 0.025.sh),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: new EdgeInsets.only(
                              top: 0.030.sw,
                              left: 0.38.sw,
                              right: 0.38.sw,
                              bottom: 0.030.sw),
                          primary: Theme.of(context).hintColor),
                    ),
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
