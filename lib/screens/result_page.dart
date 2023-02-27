import 'package:flutter/material.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/screens/quiz_page.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key, this.score, this.outOf, this.routeName})
      : super(key: key);

  int? score;
  int? outOf;
  String? routeName;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String result = 'A+';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: containerClr1,
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'Congratulation',
                  style: myStyle(40, FontWeight.bold, whiteClr),
                ),
                Text(
                  'You Got $result',
                  style: myStyle(40, FontWeight.bold, yellowClr),
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                      padding:
                          EdgeInsets.symmetric(vertical: 45, horizontal: 20),
                      height: MediaQuery.of(context).size.height * .22,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: containerClr2.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: whiteClr.withOpacity(0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: containerClr1),
                              child: Text(
                                '${widget.score}',
                                style: myStyle(50, FontWeight.bold, yellowClr),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            ':',
                            style: myStyle(50, FontWeight.bold, whiteClr),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: containerClr1),
                              child: Text(
                                '${widget.outOf}',
                                style: myStyle(50, FontWeight.bold, whiteClr),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: whiteClr),
                            child: Icon(
                              Icons.scoreboard_rounded,
                              color: containerClr1,
                              size: 30,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: containerClr1,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Text(
                              "Final Score",
                              textAlign: TextAlign.start,
                              style: myStyle(18, FontWeight.bold, whiteClr),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: whiteClr),
                            child: Icon(
                              Icons.share,
                              color: containerClr1,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '${widget.routeName}', (route) => false);
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: containerClr2.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: whiteClr,
                    ),
                    child: Text(
                      'Finish',
                      style: myStyle(18, FontWeight.bold, containerClr2),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
