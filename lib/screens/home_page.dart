import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/screens/international_page.dart';
import 'package:quiz_app_3/screens/national_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NationalPage(),));
                              },
                              child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: containerClr1.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: containerClr1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'images/national.png',
                                  width: 70,
                                ),
                                Text(
                                  'বাংলাদেশ\nবিষয়াবলি',
                                  style: GoogleFonts.tiroBangla(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: whiteClr,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: containerClr2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: GestureDetector(
                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => InternationalPage(),));
                              },
                              child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: containerClr1,
                              boxShadow: [
                                BoxShadow(
                                  color: containerClr1.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 2,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                              ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'images/international.png',
                                  width: 70,
                                ),
                                Text(
                                  'আন্তর্জাতিক\nবিষয়াবলি',
                                  style: GoogleFonts.tiroBangla(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: whiteClr,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: containerClr2,
                                  ),
                                ),
                              ],
                          ),
                        ),
                            )),
                      ],
                    ),
                  )),
              Expanded(flex: 14, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
