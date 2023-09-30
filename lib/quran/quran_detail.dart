import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/quran/quran_sura_name.dart';

import '../app_theme.dart';

class QuranDetail extends StatefulWidget {

  static const String routeName = "quran-detail";

  const QuranDetail({super.key});

  @override
  State<QuranDetail> createState() => _QuranDetailState();
}

class _QuranDetailState extends State<QuranDetail> {
  String content = '';
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {


    var argumentOfModelRoute = ModalRoute.of(context)?.settings.arguments as SuraDetails;

    if(content.isEmpty) readFiles(argumentOfModelRoute.suraNumber);

    var mediaQuery = MediaQuery.of(context).size;
    var theme = AppTheme.lightTheme;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppTheme.isDark ? 'assets/images/background_homelayout_dark.png'
                :'assets/images/default_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: mediaQuery.width,
      height: mediaQuery.height,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامى'),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 30, right: 30, top: 30,
          bottom: 60,),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: theme.colorScheme.onPrimary.withOpacity(0.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة ${argumentOfModelRoute.suraName}',
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Icon(Icons.play_circle, size: 32, color: theme.primaryColor,)
                ],
              ),
              const Divider(
                indent: 25,
                endIndent: 25,
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    '${ayat[index]}{(${index+1})}',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.elMessiri(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  itemCount: ayat.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {

    String text = await rootBundle.loadString("assets/sura/$index.txt");
    content = text;

    setState(() {
      ayat = content.split("\n");
    });
    print(text);
  }
}

