import 'package:flutter/material.dart';

import '../app_theme.dart';

class QuranItem extends StatelessWidget {

  final String suraName;
  final String suraNumber;

  const QuranItem({super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {

    var theme = AppTheme.lightTheme;

    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: theme.primaryColor,
          width: 2.5,
          height: 45.0,
        ),
        Expanded(
          child: Text(
            suraName,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
