import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/hadeth/hadeth_detail.dart';

import '../app_theme.dart';
import 'hadeth_data.dart';


class Hadeth extends StatefulWidget {


  const Hadeth({super.key});

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<HadethData> allhadeth = [];

  @override
  Widget build(BuildContext context) {

    if(allhadeth.isEmpty) readHadeth();
    var theme = AppTheme.lightTheme;
    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
          height: 160.0,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Divider(
            thickness: 2.5,
            height: 0,
            indent: 40,
            endIndent: 40,
          ),
        ),
        Text(
          'الحديث النبوى الشريف',

          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 2.5,
          height: 0.0,
          indent: 40,
          endIndent: 40,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetail.routeName,
                    arguments: HadethData(title: allhadeth[index].title,
                        content: allhadeth[index].content));
              },
              child: Text(
                allhadeth[index].title,
              textAlign: TextAlign.center,
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 15.0,),
            itemCount: allhadeth.length,
          ),
        ),
      ],
    );
  }

  readHadeth() async {

    String section = await rootBundle.loadString("assets/hadeth/alhadeth.txt");

    List<String> ahadeth = section.split("#");

    for(int i = 0; i < ahadeth.length; i++) {

      String allOneHadeth = ahadeth[i].trim();
      int indexOfHadethTitle = allOneHadeth.indexOf("\n");
      String hadethTitle = allOneHadeth.substring( 0, indexOfHadethTitle);
      String hadeth = allOneHadeth.substring(indexOfHadethTitle + 1);

      HadethData hadethData = HadethData(title: hadethTitle, content: hadeth);

      setState(() {

        allhadeth.add(hadethData);

      });

      print(hadethTitle);

    }
  }
}