import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/screens/quiz_page.dart';

class PDFViewerPage extends StatefulWidget {
  PDFViewerPage({Key? key, this.file, this.QuestionList, this.routeName})
      : super(key: key);

  File? file;
  List? QuestionList;
  String? routeName;

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {

  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file!.path);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: containerClr1,
        centerTitle: true,
        title: Text(name),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: PDFView(
          filePath: widget.file!.path,
          pageSnap: false,
          pageFling: false,
          autoSpacing: false,
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => QuizPage(
                    questionList: widget.QuestionList,
                    routeName: widget.routeName,
                  )));
        },
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: containerClr1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Exam  ',
                style: myStyle(16, FontWeight.bold, whiteClr),
              ),
              Icon(
                Icons.arrow_forward,
                color: whiteClr,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );

  }
}
