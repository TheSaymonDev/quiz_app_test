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
  bool isFABVisible = false;

  @override
  void initState() {
    super.initState();

    if (widget.routeName == '/recent') {
      setState(() {
        isFABVisible = false;
      });
    }
   if(widget.routeName=='/national'){
     setState(() {
       isFABVisible=true;
     });
   }
    if(widget.routeName=='/international'){
      setState(() {
        isFABVisible=true;
      });
    }
  }

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
      floatingActionButton: Visibility(
        visible: isFABVisible,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => QuizPage(
                               questionList: widget.QuestionList,
                              routeName: widget.routeName,
                             )));
          },
          label: Text('Exam'),
          icon: Icon(Icons.note_alt_outlined),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: containerClr1,
          foregroundColor: whiteClr,
        ),
      ),
    );
  }
}
