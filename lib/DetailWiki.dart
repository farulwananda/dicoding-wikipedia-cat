import 'package:flutter/material.dart';
import 'package:dicoding_flutter_wicat/CatList.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final WikipediaCat cat;

  DetailScreen({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEDD5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(cat.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF59E0B),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        StarredButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                cat.description,
                textAlign: TextAlign.justify,
                style: GoogleFonts.inter(
                  fontSize: 16.0
                ),
              ),
            ),
            Container(
            height: 150,    
              child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 3.0,
                viewportFraction: 0.5,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset('assets/scottisfold.jpg'),
                Image.asset('assets/maine_coon.jpg'),
                Image.asset('assets/russian_blue.jpg'),
                Image.asset('assets/norwegian_forest.jpg'),
              ],
          ),
            )
          ],
        ),
      ),
    );
  }
}

class StarredButton extends StatefulWidget {
  @override
  _StarredButtonState createState() => _StarredButtonState();
}

class _StarredButtonState extends State<StarredButton> {
  bool isStarred = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isStarred ? Icons.star : Icons.star_border,
        color: Color(0xffF59E0B),
      ),
      onPressed: () {
        setState(() {
          isStarred = !isStarred;
        });
      },
    );
  }
}
