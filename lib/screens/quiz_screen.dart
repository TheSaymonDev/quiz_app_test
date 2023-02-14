import 'package:flutter/material.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/data/questions_example.dart';
import 'package:quiz_app_3/screens/result_page.dart';

class QuizzScreen extends StatefulWidget {
   QuizzScreen({Key? key, this.nationalList}) : super(key: key);

   List? nationalList;

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: containerClr1,
          centerTitle: true,
          title: Icon(
            Icons.alarm,
            color: Colors.white,
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(12),
            height: double.infinity,
            width: double.infinity,
            child: PageView.builder(
              controller: _controller!,
              onPageChanged: (page) {
                if (page == widget.nationalList!.length-1) {
                  setState(() {
                    btnText = "See Results";
                  });
                }
                setState(() {
                  answered = false;
                });
              },
              physics: new NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: yellowClr),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                              child: Text(
                            "${index + 1}/2",
                            textAlign: TextAlign.start,
                            style:
                                myStyle(20, FontWeight.bold, containerClr2),
                              ),
                            ),
                            Text(
                              "${widget.nationalList![index].question}",
                              style: TextStyle(
                                color: textClr,
                                fontSize: 22.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                              ),
                              child: Text(
                            '?',
                            style:
                                myStyle(25, FontWeight.bold, containerClr2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    for (int i = 0; i < widget.nationalList![index].answers!.length; i++)
                      GestureDetector(
                        onTap: !answered
                            ? () {
                                if (widget.nationalList![index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score++;
                                  print("yes");
                                } else {
                                  print("no");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(6),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: btnPressed == true
                                ? null
                                : Border.all(width: 2, color: containerClr1),
                            borderRadius: BorderRadius.circular(8),
                            color: btnPressed
                                ? widget.nationalList![index].answers!.values.toList()[i]
                                    ? containerClr1
                                    : redClr
                                : whiteClr,
                          ),
                          child: Text(
                              widget.nationalList![index].answers!.keys.toList()[i],
                              style: myStyle(
                                  18,
                                  FontWeight.w400,
                                  btnPressed == true
                                      ? whiteClr
                                      : containerClr2)),
                        ),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_controller!.page?.toInt() ==
                            widget.nationalList!.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultPage(score: score, outOf: widget.nationalList!.length,)));
                        } else {
                          _controller!.nextPage(
                              duration: Duration(milliseconds: 250),
                              curve: Curves.easeInExpo);

                          setState(() {
                            btnPressed = false;
                          });
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * .50,
                        decoration: BoxDecoration(
                          color: containerClr2,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'Next Question',
                          style: myStyle(18, FontWeight.bold, yellowClr),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
              itemCount: widget.nationalList!.length,
            )));
  }
}

myStyle(double size, FontWeight weight, Color clr) {
  return TextStyle(fontSize: size, fontWeight: weight, color: clr);
}
