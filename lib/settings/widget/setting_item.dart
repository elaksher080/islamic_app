import 'package:flutter/material.dart';
typedef SettingsOptionClicked = void Function();
class SettingItem extends StatelessWidget {
  final String settingOptionTitle, selectedOption;
  final SettingsOptionClicked onOptionToped;
  const SettingItem({super.key,
    required this.settingOptionTitle,
    required this.selectedOption,
    required this.onOptionToped});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          settingOptionTitle,
          textAlign: TextAlign.start,
          style:theme.textTheme.bodyLarge ,
        ),
        GestureDetector(
          onTap:onOptionToped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10) ,
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color:theme.primaryColor,
                  width: 1.5,
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(selectedOption),
                Icon(Icons.arrow_drop_down_circle_outlined),
              ],

            ),

          ),
        ),
      ],
    );
  }
}
