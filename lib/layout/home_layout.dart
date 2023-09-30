import 'package:flutter/material.dart';
import 'package:islamic_app/hadeth/hadeth_screen.dart';
import 'package:islamic_app/sebha/sebha_screen.dart';
import 'package:islamic_app/radio/radio_screen.dart';
import 'package:islamic_app/settings/setting_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../app_theme.dart';
import '../quran/quran_screen.dart';


class HomeScreen extends StatefulWidget {

  static const String routeName = "home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 4;
  List<Widget> pages = [
    const Settings(),
    const RadioScreen(),
    const Sebha(),
    const Hadeth(),
    const Quran(),
  ];

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppTheme.isDark ? 'assets/images/background_homelayout_dark.png'
                : 'assets/images/default_bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: mediaQuery.width,
      height: mediaQuery.height,
      child: Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.islami),
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items:  [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_setting.png'),
              ),
              label:AppLocalizations.of(context)!.settings,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_radio.png'),
              ),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: AppLocalizations.of(context)!.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),
              ),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icon_quran.png'),
              ),
              label: AppLocalizations.of(context)!.qruan,
            ),
          ],
        ),
      ),
    );
  }
}

