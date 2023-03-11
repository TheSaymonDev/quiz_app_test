import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/data/questions_example.dart';
import 'package:quiz_app_3/data/topic_example.dart';
import 'package:quiz_app_3/screens/quiz_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashBoardPage extends StatefulWidget {
   DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  // int? counter=0;
  // void load() async{
  //   final prefs = await SharedPreferences.getInstance();
  //  setState(()  {
  //    counter= prefs.getInt('result')??0;
  //  });
  // }

  int total =50;

  @override
  void initState() {
    // TODO: implement initState
    load();
    super.initState();
  }

  int count=0;
  load() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      count=preferences.getInt('result')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 15,right: 15,left: 15),
          height: double.infinity,
          width: double.infinity,
          child: MasonryGridView.count(   itemCount: topicListNational.length,
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: containerClr1.withOpacity(0.1)
            ),
            child: Column(
              children: [
                Text(topicListNational[index]['name'], style: GoogleFonts.notoSans(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textClr
                ),),
                SizedBox(height: 15,),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 5000,
                  radius: 65,
                  lineWidth: 20,
                  percent: count!.toDouble()/total,
                  progressColor: topicListNational[index]['color2'],
                  backgroundColor: topicListNational[index]['color'].withOpacity(0.3),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${count}/$total', style: myStyle(16, FontWeight.bold, textClr),),
                      SizedBox(height: 8,),
                      Text('${count*2}%', style: myStyle(18, FontWeight.bold, textClr),)
                    ],
                  ),
                ),
              ],
            ),
          ),),
        ),
      ),
    );
  }
}
