import 'package:dicoding_flutter_wicat/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFEDD5),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/undraw_start.png',
              width: 300,
              height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Find out about the world's cat breeds here",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff2F2E41),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffCCCCCC),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 3))
                  ]),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF59E0B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Start Journey',
                  style: GoogleFonts.inter(
                      color: Color(0xff2F2E41), fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
