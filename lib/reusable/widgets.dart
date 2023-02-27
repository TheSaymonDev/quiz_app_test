import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiz_app_3/colors.dart';

toastMessage(String msg){
  return Fluttertoast.showToast(msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: containerClr1,
      textColor: whiteClr,
      fontSize: 16.0);
}