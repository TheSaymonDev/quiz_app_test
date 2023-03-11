import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_3/api/pdf_view_api.dart';
import 'package:quiz_app_3/colors.dart';
import 'package:quiz_app_3/screens/home_page.dart';
import 'package:quiz_app_3/screens/pdf_viewer_page.dart';
import 'package:quiz_app_3/screens/tab_bar_page.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({Key? key}) : super(key: key);

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream =
        FirebaseFirestore.instance.collection('recent').snapshots();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: containerClr1,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => TabBarPage(),
                  ),
                  (route) => false);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'সাম্প্রতিক বিষয়াবলি',
          style: GoogleFonts.galada(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: whiteClr,
              letterSpacing: 2),
        ),
      ),
      body: StreamBuilder(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
              padding: EdgeInsets.all(15),
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return GestureDetector(
                    onTap: () async {
                      final url = data['pdfName'];
                      final file = await PDFApi.loadFirebaseRecent(url);
                      if (file == null) return;
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PDFViewerPage(file: file, routeName: '/recent', ),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        tileColor: Color(data['containerClr']),
                        leading: Icon(Icons.auto_mode_rounded),
                        title: Text(data['title']),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                }).toList(),
              ));
        },
      ),
    );
  }
}
