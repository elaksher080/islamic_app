

import 'package:flutter/material.dart';
import 'package:islamic_app/settings/widget/language_bottom_sheet.dart';
import 'package:islamic_app/settings/widget/setting_item.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 50),
      child: Column(
        children: [
          SettingItem(
            settingOptionTitle: "Language",
            selectedOption:"English" ,
            onOptionToped: (){
              showLanguageBottomSheet(context);
            },

          ),
   /////////////////////////////////////////////////////////////////////////////////
      const SizedBox(height: 50),

          SettingItem(
            settingOptionTitle: "Theme Mood",
            selectedOption:"Dark",
            onOptionToped: (){
              showThemeBottomSheet(context);

            },

          ),

        ],

      ),
    );
  }
  void showLanguageBottomSheet(context){
    showModalBottomSheet(context: context, builder:(context) => LanguageBottomSheet());
  }

  void showThemeBottomSheet(context){
    showModalBottomSheet(context: context, builder:(context) => LanguageBottomSheet());
  }
}
