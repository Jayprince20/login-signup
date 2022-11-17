import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin/controllers/welcomecontroller.dart';
import 'package:glass/glass.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signin/routes/myroutes.dart';

class WelcomePage extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 400,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  "assets/images/job.jpg",
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: Text(
                textAlign: TextAlign.center,
                "Discover your Dream job Here",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              child: Text(
                textAlign: TextAlign.center,
                "Explore all the most existing jobs roles based on your internet and study major",
                style: GoogleFonts.lato(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 70,
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.Login);
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.Register);
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ).asGlass(
                      tintColor: Colors.transparent,
                      clipBorderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ],
              ),
            ).asGlass(
              tintColor: Colors.transparent,
              clipBorderRadius: BorderRadius.circular(15.0),
            )
          ],
        ),
      ),
    );
  }
}
