import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/data/questions_example.dart';
import 'package:quiz_app_3/data/topic_example.dart';
import 'package:quiz_app_3/screens/quiz_screen.dart';

class InternationalPage extends StatefulWidget {
  const InternationalPage({Key? key}) : super(key: key);

  @override
  State<InternationalPage> createState() => _InternationalPageState();
}

class _InternationalPageState extends State<InternationalPage> {

  var selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: containerClr1,
        centerTitle: true,
        title: Text(
          'আন্তর্জাতিক বিষয়াবলি',
          style: GoogleFonts.galada(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: whiteClr,
              letterSpacing: 2),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: MasonryGridView.count(
          itemCount: topicListInternational.length,
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                  myQuestionList1 == selected;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => QuizzScreen(
                        nationalList: myQuestionList1[index],
                      )));
                });
              },
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    color: topicListInternational[index]['color'],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Transform.rotate(
                          angle: pi / 4,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: topicListInternational[index]['color2'],
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    topicListInternational[index]['imgUrl'],
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        topicListInternational[index]['name'],
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
