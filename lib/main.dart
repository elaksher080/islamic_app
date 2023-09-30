import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/hadeth/hadeth_detail.dart';
import 'package:islamic_app/layout/home_layout.dart';
import 'package:islamic_app/quran/quran_detail.dart';
import 'package:islamic_app/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
        HomeScreen.routeName : (context) => const HomeScreen(),
        QuranDetail.routeName : (context) => const QuranDetail(),
        HadethDetail.routeName : (context) => const HadethDetail(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: AppTheme.isDark? ThemeMode.dark
      :ThemeMode.light ,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),


    );
  }
}

