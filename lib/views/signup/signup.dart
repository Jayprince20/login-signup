import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:signin/controllers/signupcontroller.dart';
import 'package:signin/routes/myroutes.dart';

class SignUpPage extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 1000,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Hello Again!",
                  style: GoogleFonts.lato(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Welcome to Jobix",
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      enabled: false,
                      filled: true,
                      hintText: "Enter Username",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      enabled: false,
                      filled: true,
                      hintText: "Enter Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabled: false,
                      filled: true,
                      hintText: "Password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220, top: 20),
                  child: Text(
                    textAlign: TextAlign.end,
                    "forget password?",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 330,
                  height: 80,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 7,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Or continue with",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 90,
                        height: 70,
                        child: Icon(
                          LineIcons.googlePlus,
                          color: Colors.red,
                          size: 60,
                        ),
                      ).asGlass(
                        tintColor: Colors.transparent,
                        clipBorderRadius: BorderRadius.circular(15.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 90,
                        height: 70,
                        child: Icon(
                          LineIcons.apple,
                          size: 60,
                          color: Colors.black,
                        ),
                      ).asGlass(
                        tintColor: Colors.transparent,
                        clipBorderRadius: BorderRadius.circular(15.0),
                      ),
                      Container(
                        width: 90,
                        height: 70,
                        child: Icon(
                          LineIcons.facebook,
                          size: 60,
                          color: Colors.blue,
                        ).asGlass(
                          tintColor: Colors.transparent,
                          clipBorderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.end,
                        "A member already ?",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.Login);
                        },
                        child: Text(
                          textAlign: TextAlign.end,
                          "Login now",
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ).asGlass(
        tintColor: Colors.transparent,
        clipBorderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
