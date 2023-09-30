import 'package:flutter/material.dart';
import 'package:islamic_app/quran/quran_detail.dart';
import 'package:islamic_app/quran/quran_item.dart';
import 'package:islamic_app/quran/quran_sura_name.dart';

import '../app_theme.dart';

class Quran extends StatefulWidget {

  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
   List<String> suraNames = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          'assets/images/qur2an_screen_logo.png',
          height: 160.0,
        ),
         Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Divider(

            thickness: 2.5,
            endIndent: 5,
            height: 0,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'رقم السورة',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Container(

              width: 2.5,
              height: 45.0,
            ),
            Expanded(
              child: Text(
                  'إسم السورة',
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2.5,
          endIndent: 5,
          height: 0,
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, QuranDetail.routeName,
                    arguments: SuraDetails(suraName: suraNames[index],
                        suraNumber: '${index+1}'),);
                },
                child: QuranItem(
                  suraName: suraNames[index],
                  suraNumber: '${index+1}'
                ),
              ),
              itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}
