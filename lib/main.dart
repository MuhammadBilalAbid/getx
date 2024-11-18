import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/home_screen.dart';
import 'package:getx_eample/image_show.dart';
import 'package:getx_eample/languages.dart';
import 'package:getx_eample/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const LoginScreen(),
      // getPages: [
      //   GetPage(name: '/', page: () => const HomeScreen()),
      //   GetPage(name: '/screen-one', page: () => ScreenOne()),
      //   GetPage(name: '/screen-two', page: () => const ScreenTwo()),
      // ],
    );
  }
}
