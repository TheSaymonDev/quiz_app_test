import 'package:flutter/material.dart';

List<Map> topicListNational = [
  {'name': 'প্রাচীন বাংলার ইতিহাস', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon1.png', 'pdfName': 'sample_1.pdf'},
  {'name': 'উপমহাদেশে ইসলামের আবির্ভাব', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon2.png', 'pdfName': 'sample_2.pdf'},
  {'name': 'বাংলায় মুসলিম শাসন প্রতিষ্ঠা ', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon3.png', 'pdfName': 'sample_3.pdf'},
  {'name': 'মুঘল সাম্রাজ্য', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon4.png', 'pdfName': 'sample_4.pdf'},
  {'name': 'ইংরেজ শাসন', 'color': Colors.purpleAccent, 'color2':  Colors.purple,'imgUrl':'images/icon5.png', 'pdfName': 'sample_5.pdf'},
  {'name': 'বাংলার সংস্কার আন্দোলন', 'color': Colors.deepOrangeAccent, 'color2':  Colors.deepOrange,'imgUrl':'images/icon6.png', 'pdfName': 'sample_6.pdf'},
  {'name': 'বাংলার রাজনৈতিক আন্দোলন', 'color': Colors.pinkAccent, 'color2':  Colors.pink,'imgUrl':'images/icon7.png', 'pdfName': 'sample_7.pdf'},
  {'name': 'পাকিস্তান আমল', 'color': Colors.orangeAccent, 'color2':Colors.orange,'imgUrl':'images/icon8.png', 'pdfName': 'sample_8.pdf'},
  {'name': 'মহান মুক্তিযুদ্ধ', 'color': Colors.cyanAccent, 'color2':Colors.cyan,'imgUrl':'images/icon9.png', 'pdfName': 'sample_9.pdf'},
  {'name': 'বাংলাদেশ পরিচিতি', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon10.png', 'pdfName': 'sample_10.pdf'},
  {'name': 'বাংলাদেশের অবস্থান, আয়তন ও সীমানা', 'color': Colors.lightGreenAccent, 'color2':Colors.lightGreen,'imgUrl':'images/icon11.png', 'pdfName': 'sample_11.pdf'},
  {'name': 'বাংলাদেশের আবহাও্যা ও জলবায়ু', 'color': Colors.tealAccent, 'color2':Colors.teal,'imgUrl':'images/icon12.png', 'pdfName': 'sample_12.pdf'},
  {'name': 'বাংলাদেশের প্রথম', 'color': Colors.indigoAccent, 'color2':Colors.indigo,'imgUrl':'images/icon13.png', 'pdfName': 'sample_13.pdf'},
  {'name': 'বাংলাদেশের জাতীয় বিষয়াবলী', 'color': Colors.limeAccent, 'color2':Colors.lime,'imgUrl':'images/icon14.png', 'pdfName': 'sample_14.pdf'},
  {'name': 'বাংলাদেশের শিক্ষা', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon15.png', 'pdfName': 'sample_15.pdf'},
  {'name': 'বাংলাদেশের সংবিধান', 'color': Colors.lightBlueAccent, 'color2':Colors.lightBlue,'imgUrl':'images/icon16.png', 'pdfName': 'sample_16.pdf'},
  {'name': 'জাতীয় সংসদ', 'color': Colors.blueGrey, 'color2':Colors.blueGrey[900], 'imgUrl':'images/icon17.png', 'pdfName': 'sample_17.pdf'},
  {'name': 'গণভোট ও সংসদ নির্বাচন', 'color': Colors.brown, 'color2':Colors.brown[900],'imgUrl':'images/icon18.png', 'pdfName': 'sample_18.pdf'},
  {'name': 'বাংলাদেশের সাংবিধানিক সংস্থা', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon19.png', 'pdfName': 'sample_19.pdf'},
  {'name': 'বাংলাদেশ সরকারের প্রশাসনিক ব্যবস্থা', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon20.png', 'pdfName': 'sample_20.pdf'},
  {'name': 'জনসঙ্ক্যা ও ক্ষুদ্র নৃগোষ্ঠী', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon21.png', 'pdfName': 'sample_21.pdf'},
  {'name': 'বাংলাদেশের নদী, সমুদ্রবন্দর ও বাঁধ', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon22.png', 'pdfName': 'sample_22.pdf'},
  {'name': 'বাংলাদেশের পাহাড়, পর্বত, চর বন্দর ও অন্যান্য', 'color': Colors.purpleAccent, 'color2':  Colors.purple,'imgUrl':'images/icon23.png', 'pdfName': 'sample_23.pdf'},
  {'name': 'ভৌগলিক উপনাম, বর্তমান ও পুরাতন নাম', 'color': Colors.deepOrangeAccent, 'color2':  Colors.deepOrange,'imgUrl':'images/icon24.png', 'pdfName': 'sample_24.pdf'},
  {'name': 'বাংলাদেশের সম্পদ', 'color': Colors.pinkAccent, 'color2':  Colors.pink,'imgUrl':'images/icon25.png', 'pdfName': 'sample_25.pdf'},
  {'name': 'বাংলাদেশের শিল্প', 'color': Colors.orangeAccent, 'color2':Colors.orange,'imgUrl':'images/icon26.png', 'pdfName': 'sample_26.pdf'},
  {'name': 'বাংলাদেশের অর্থনীতি', 'color': Colors.cyanAccent, 'color2':Colors.cyan,'imgUrl':'images/icon27.png', 'pdfName': 'sample_27.pdf'},
  {'name': 'বাংলাদেশের জাতীয় দিবস', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon28.png', 'pdfName': 'sample_28.pdf'},
  {'name': 'বাংলাদেশের শিল্প-সাহিত্য ও সংস্কৃতি', 'color': Colors.lightGreenAccent, 'color2':Colors.lightGreen,'imgUrl':'images/icon29.png', 'pdfName': 'sample_29.pdf'},
  {'name': 'বাংলার প্রাচীন স্থাপত্য', 'color': Colors.tealAccent, 'color2':Colors.teal,'imgUrl':'images/icon30.png', 'pdfName': 'sample_30.pdf'},
  {'name': 'বাংলাদেশের ভাস্কর, ভাস্কর্য ও অবস্থান', 'color': Colors.indigoAccent, 'color2':Colors.indigo,'imgUrl':'images/icon31.png', 'pdfName': 'sample_31.pdf'},
  {'name': 'বিভিন্ন প্রতিষ্ঠান, একাডেমি ও কমিশন', 'color': Colors.limeAccent, 'color2':Colors.lime,'imgUrl':'images/icon32.png', 'pdfName': 'sample_32.pdf'},
  {'name': 'আন্তর্জাতিক ক্ষেত্রে বাংলাদেশ', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon33.png', 'pdfName': 'sample_33.pdf'},
  {'name': 'বাংলাদেশের চুক্তি', 'color': Colors.lightBlueAccent, 'color2':Colors.lightBlue,'imgUrl':'images/icon34.png', 'pdfName': 'sample_34.pdf'},
  {'name': 'বাংলাদেশের প্রতিরক্ষা ও নিরাপত্তা বাহিনী', 'color': Colors.blueGrey, 'color2':Colors.blueGrey[900], 'imgUrl':'images/icon35.png', 'pdfName': 'sample_35.pdf'},
  {'name': 'পরিবহন ও যোগাযোগ ব্যবস্থা', 'color': Colors.brown, 'color2':Colors.brown[900],'imgUrl':'images/icon36.png', 'pdfName': 'sample_36.pdf'},
  {'name': 'বাংলাদেশের গণমাধ্যম', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon37.png', 'pdfName': 'sample_37.pdf'},
  {'name': 'বাংলাদেশের দর্শনীয় স্থান', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon38.png', 'pdfName': 'sample_38.pdf'},
  {'name': 'কবি সাহিত্যিকদের ছদ্মনাম,উপাধি,মহাকাব্য', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon39.png', 'pdfName': 'sample_39.pdf'},
  {'name': 'সংক্ষেপ ও খেলাধুলা', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon40.png', 'pdfName': 'sample_40.pdf'},
];


List<Map> topicListInternational = [
  {'name': 'পৃথিবী পরিচিতি', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon41.png', 'pdfName': 'sample_01.pdf'},
  {'name': 'এশিয়া মহাদেশ', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon42.png', 'pdfName': 'sample_02.pdf'},
  {'name': 'ইউরোপ', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon43.png', 'pdfName': 'sample_03.pdf'},
  {'name': 'উত্তর আমেরিকা মহাদেশ', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon44.png', 'pdfName': 'sample_04.pdf'},
  {'name': 'দক্ষিণ আমেরিকা মহাদেশ', 'color': Colors.purpleAccent, 'color2':  Colors.purple,'imgUrl':'images/icon45.png', 'pdfName': 'sample_05.pdf'},
  {'name': 'আফ্রিকা মহাদেশ', 'color': Colors.deepOrangeAccent, 'color2':  Colors.deepOrange,'imgUrl':'images/icon46.png', 'pdfName': 'sample_06.pdf'},
  {'name': 'ওশেনিয়া মহাদেশ', 'color': Colors.pinkAccent, 'color2':  Colors.pink,'imgUrl':'images/icon47.png', 'pdfName': 'sample_07.pdf'},
  {'name': 'সমসাময়িক সমস্যা', 'color': Colors.orangeAccent, 'color2':Colors.orange,'imgUrl':'images/icon48.png', 'pdfName': 'sample_08.pdf'},
  {'name': 'প্রাচীন সভ্যতা', 'color': Colors.cyanAccent, 'color2':Colors.cyan,'imgUrl':'images/icon49.png', 'pdfName': 'sample_09.pdf'},
  {'name': 'বিশ্বের বিভিন্ন অঞ্চল পরিচিতি', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon50.png', 'pdfName': 'sample_10.pdf'},
  {'name': '১ম ও ২য় বিশ্বযুদ্ধ, জাতিপুঞ্জ ও জাতিসংঘ', 'color': Colors.lightGreenAccent, 'color2':Colors.lightGreen,'imgUrl':'images/icon51.png', 'pdfName': 'sample_11.pdf'},
  {'name': 'বিভিন্ন সংস্থা', 'color': Colors.tealAccent, 'color2':Colors.teal,'imgUrl':'images/icon52.png', 'pdfName': 'sample_12.pdf'},
  {'name': 'বিভিন্ন গেরিলা ও রাজনৈতিক দল', 'color': Colors.indigoAccent, 'color2':Colors.indigo,'imgUrl':'images/icon53.png', 'pdfName': 'sample_13.pdf'},
  {'name': 'বিশ্বের গোয়েন্দা সংস্থা', 'color': Colors.limeAccent, 'color2':Colors.lime,'imgUrl':'images/icon54.png', 'pdfName': 'sample_14.pdf'},
  {'name': 'বিপ্লব', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon55.png', 'pdfName': 'sample_15.pdf'},
  {'name': 'আলোচিত যুদ্ধ', 'color': Colors.lightBlueAccent, 'color2':Colors.lightBlue,'imgUrl':'images/icon56.png', 'pdfName': 'sample_16.pdf'},
  {'name': 'গুরুত্বপূর্ণ চুক্তি ও কনভেনশন', 'color': Colors.blueGrey, 'color2':Colors.blueGrey[900], 'imgUrl':'images/icon57.png', 'pdfName': 'sample_17.pdf'},
  {'name': 'ভৌগলিক উপনাম', 'color': Colors.brown, 'color2':Colors.brown[900],'imgUrl':'images/icon58.png', 'pdfName': 'sample_18.pdf'},
  {'name': 'বিখ্যাত ব্যক্তিত্ব', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon59.png', 'pdfName': 'sample_19.pdf'},
  {'name': 'বিখ্যাত গ্রন্থ', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon60.png', 'pdfName': 'sample_20.pdf'},
  {'name': 'বিশ্বের বিভিন্ন উপজাতি', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon61.png', 'pdfName': 'sample_21.pdf'},
  {'name': 'প্রণালী', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon62.png', 'pdfName': 'sample_22.pdf'},
  {'name': 'সীমা চিহ্নিতকরণ রেখা ও অক্ষরেখা', 'color': Colors.purpleAccent, 'color2':  Colors.purple,'imgUrl':'images/icon63.png', 'pdfName': 'sample_23.pdf'},
  {'name': 'বিখ্যাত দ্বীপ', 'color': Colors.deepOrangeAccent, 'color2':  Colors.deepOrange,'imgUrl':'images/icon64.png', 'pdfName': 'sample_24.pdf'},
  {'name': 'পৃথিবীর বিখ্যাত হ্রদ, পর্ব, আগ্নেয়গিরি, মরুভূমি', 'color': Colors.pinkAccent, 'color2':  Colors.pink,'imgUrl':'images/icon65.png', 'pdfName': 'sample_25.pdf'},
  {'name': 'বিখ্যাত নদ-নদী, খাল ও সমুদ্রদন্দর', 'color': Colors.orangeAccent, 'color2':Colors.orange,'imgUrl':'images/icon66.png', 'pdfName': 'sample_26.pdf'},
  {'name': 'বিখ্যাত স্থান', 'color': Colors.cyanAccent, 'color2':Colors.cyan,'imgUrl':'images/icon67.png', 'pdfName': 'sample_27.pdf'},
  {'name': 'বিশ্বের বিভিন্ন বাসভবন ও সচিবালয়', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon68.png', 'pdfName': 'sample_28.pdf'},
  {'name': 'বিভিন্ন প্রেক্ষিতে বৃহত্তম ও ক্ষুদ্রতম দেশ', 'color': Colors.lightGreenAccent, 'color2':Colors.lightGreen,'imgUrl':'images/icon69.png', 'pdfName': 'sample_29.pdf'},
  {'name': 'বিশ্বের প্রথম', 'color': Colors.tealAccent, 'color2':Colors.teal,'imgUrl':'images/icon70.png', 'pdfName': 'sample_30.pdf'},
  {'name': 'ভাষা, দিবস, বিমান বন্দর ও সামরিক ঘাঁটি', 'color': Colors.indigoAccent, 'color2':Colors.indigo,'imgUrl':'images/icon71.png', 'pdfName': 'sample_31.pdf'},
  {'name': 'বিভিন্ন দেশের জাতীয় প্রতিক', 'color': Colors.limeAccent, 'color2':Colors.lime,'imgUrl':'images/icon19.png', 'pdfName': 'sample_32.pdf'},
  {'name': 'বিশ্বের দীর্ঘতম, ক্ষুদ্রতম, বৃহত্তম ও উচ্চতম', 'color': Colors.deepPurpleAccent, 'color2':Colors.deepPurple,'imgUrl':'images/icon72.png', 'pdfName': 'sample_33.pdf'},
  {'name': 'বিশ্বের বিভিন্ন লাইব্রেরি জাদুঘর ও সুড়ঙ্গপথ', 'color': Colors.lightBlueAccent, 'color2':Colors.lightBlue,'imgUrl':'images/icon73.png', 'pdfName': 'sample_34.pdf'},
  {'name': 'বিশ্বের প্রথম, বিভিন্ন শাস্ত্রের ও তত্ত্বের জনক', 'color': Colors.blueGrey, 'color2':Colors.blueGrey[900], 'imgUrl':'images/icon74.png', 'pdfName': 'sample_35.pdf'},
  {'name': 'আইনসভা, রাজধানী ও মুদ্রা ও উপনিবেশ', 'color': Colors.brown, 'color2':Colors.brown[900],'imgUrl':'images/icon75.png', 'pdfName': 'sample_36.pdf'},
  {'name': 'প্রাচীন ও বর্তমান নাম, সংবাদ সংস্থা', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon37.png', 'pdfName': 'sample_37.pdf'},
  {'name': 'বিশ্ব ইতিহাসে নারী', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon76.png', 'pdfName': 'sample_38.pdf'},
  {'name': 'কৃষ্টি ও সংস্কৃতি', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon77.png', 'pdfName': 'sample_39.pdf'},
  {'name': 'পুরস্কার ও সম্মাননা', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon78.png', 'pdfName': 'sample_40.pdf'},
  {'name': 'তথ্য প্রযুক্তি', 'color': Colors.redAccent, 'color2': Colors.red, 'imgUrl':'images/icon79.png', 'pdfName': 'sample_41.pdf'},
  {'name': 'মনীষীদের উক্তি', 'color': Colors.greenAccent, 'color2': Colors.green,'imgUrl':'images/icon80.png', 'pdfName': 'sample_42.pdf'},
  {'name': 'বিখ্যাত ব্যাংক, ম্যাগাজিন ও ভিন্ন অর্থে শব্দ', 'color': Colors.yellowAccent, 'color2': Colors.yellow,'imgUrl':'images/icon81.png', 'pdfName': 'sample_43.pdf'},
  {'name': 'মহাকাশ ও সৌরজগত', 'color': Colors.blueAccent, 'color2':   Colors.blue[900],'imgUrl':'images/icon82.png', 'pdfName': 'sample_44.pdf'},
  {'name': 'সংক্ষেপ ও খেলাধুলা', 'color': Colors.purpleAccent, 'color2':  Colors.purple,'imgUrl':'images/icon40.png', 'pdfName': 'sample_45.pdf'},
];