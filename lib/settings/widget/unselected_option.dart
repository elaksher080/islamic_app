
import 'package:flutter/material.dart';

class UnSelectedOption extends StatelessWidget {
  final String unSelectedTitle;
  const UnSelectedOption({
    super.key,
    required this.unSelectedTitle,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(unSelectedTitle),
    );
  }
}
