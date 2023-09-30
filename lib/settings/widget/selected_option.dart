
import 'package:flutter/material.dart';

class SelectedOption extends StatelessWidget {
  final String selectedTitle;
  const SelectedOption({
    super.key,
    required this.selectedTitle,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return     Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("English"),
          Icon(Icons.check_circle_outline_rounded),


        ],

      ),
    );
  }
}
