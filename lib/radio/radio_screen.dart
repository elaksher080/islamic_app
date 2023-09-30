import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';


class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var theme = AppTheme.lightTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70.0, bottom: 50.0),
              child: Image.asset('assets/images/radio_image.png',
              fit: BoxFit.cover,)),
          Container(
            margin: EdgeInsets.only(bottom: 50.0),
            child: Text(
              'إذاعة القرأن الكريم',
              style: GoogleFonts.elMessiri(
                fontSize: 38.0
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageIcon(
                AssetImage('assets/images/previous.png'),
                color: theme.primaryColor,
                size: 40.0,

              ),
              ImageIcon(
                AssetImage('assets/images/play.png'),
                color: theme.primaryColor,
                size: 40.0,
              ),
              ImageIcon(
                AssetImage('assets/images/next.png'),
                color: theme.primaryColor,
                size: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
