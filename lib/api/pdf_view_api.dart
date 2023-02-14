import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFApi {
  static Future<File?> loadFirebase(String url) async {
    try{
      final refPDF1 = FirebaseStorage.instance.ref().child('national');
      final refPDF = refPDF1.child(url);
      final bytes = await refPDF.getData();
      return _storeFile(url, bytes!);
    }catch(e){
      print(e);
    }
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}
