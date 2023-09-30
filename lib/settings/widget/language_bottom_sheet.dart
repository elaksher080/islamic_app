import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/settings/widget/selected_option.dart';
import 'package:islamic_app/settings/widget/unselected_option.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               SelectedOption(selectedTitle: "English"),

            SizedBox(height: 30),
              
            UnSelectedOption(unSelectedTitle: "عربي"),
          ],
        ),

    );
  }
}
