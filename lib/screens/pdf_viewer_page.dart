import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

class PDFViewerPage extends StatefulWidget {
  PDFViewerPage({Key? key, this.file}) : super(key: key);

  File? file;

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file!.path);
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(name),
      ),
      body: PDFView(
        filePath: widget.file!.path,
      ),
    );
  }
}
