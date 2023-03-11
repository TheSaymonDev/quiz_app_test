import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiz_app_3/reusable/widgets.dart';

class PDFApi {
  static Future<File?> loadFirebaseNational(String url) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      toastMessage('Please check your internet connection');
    } else {
      toastMessage('Please wait');
      final refPDF1 = FirebaseStorage.instance.ref().child('national');
      final refPDF = refPDF1.child(url);
      final bytes = await refPDF.getData();
      return _storeFile(url, bytes!);
    }
  }

  static Future<File?> loadFirebaseInternational(String url) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      toastMessage('Please check your internet connection');
    } else {
      toastMessage('Please wait');
      final refPDF1 = FirebaseStorage.instance.ref().child('international');
      final refPDF = refPDF1.child(url);
      final bytes = await refPDF.getData();
      return _storeFile(url, bytes!);
    }
  }

  static Future<File?> loadFirebaseRecent(String url) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      toastMessage('Please check your internet connection');
    } else {
      toastMessage('Please wait');
      final refPDF1 = FirebaseStorage.instance.ref().child('recent');
      final refPDF = refPDF1.child(url);
      final bytes = await refPDF.getData();
      return _storeFile(url, bytes!);
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
