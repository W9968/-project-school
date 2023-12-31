import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frema/screen/dashboard.dart';

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.leanBack,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade200,
            ),
            height: MediaQuery.of(context).size.height / 1.40,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.network("https://i.ibb.co/BtkYw4T/Saly-10.png",
                  width: 325, height: 325, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 32),
          Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  Text(
                    "Get More Done!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Organize your freelanding client projects With Frema and focus on onboarding more clients.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                ),
              ),
              child: Text(
                "Get Started",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
