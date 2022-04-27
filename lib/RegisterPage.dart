import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dicoding_flutter_wicat/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFEDD5),
      body: SafeArea(
        child: SingleChildScrollView (
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(top: 70,left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Your Account',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2F2E41),
                    ),
                  ),
                  Text(
                    'Let’s explore with best experience',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Color(0xff2F2E41),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/undraw_register.png',
                      width: 300,
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'E-Mail',
                      hintStyle: GoogleFonts.inter(color: Color(0xff2F2E41)),
                      fillColor: Color(0xffF6F1F1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(24)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF59E0B),
                          ),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.inter(color: Color(0xff2F2E41)),
                      fillColor: Color(0xffF6F1F1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(24)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF59E0B),
                          ),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 340,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
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
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.inter(
                            color: Color(0xff2F2E41),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Have account?', style: GoogleFonts.inter()),
                      TextButton(
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.inter(color: Color(0xffF59E0B)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
