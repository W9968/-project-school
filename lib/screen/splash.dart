import 'package:flutter/material.dart';
import 'package:frema/screen/login.dart';

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade200,
            ),
            height: MediaQuery.of(context).size.height / 1.40,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.network(
                  "https://cdn.dribbble.com/userupload/4109840/file/original-b8c4b88376882144ffbb139c8dd68074.jpg?resize=1200x900",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.40,
                  fit: BoxFit.cover),
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
                    style: GoogleFonts.inter(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Organize your freelanding client projects With Frema and focus on onboarding more clients.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
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
                  builder: (context) => const Login(),
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
                style: GoogleFonts.inter(
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
