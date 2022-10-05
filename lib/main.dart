import 'package:aplikasi_skripsi_ch/ui/pages/about_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/home_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/on_boarding_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/sign_in_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/sign_up_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/splash_screen_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/warehouse_details_page.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/warehouse-detail2.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/warehouse-detail3.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/warehouse-detail4.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/warehouse-detail5.dart';
import 'package:aplikasi_skripsi_ch/ui/pages/warehouse_list_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/on-boarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
        '/warehouse-list': (context) => const WarehouseListPage(),
        '/warehouse-detail': (context) => const WarehouseDetailPage(),
        '/warehouse-detail2': (context) => const WarehouseDetailPage2(),
        '/warehouse-detail3': (context) => const WarehouseDetailPage3(),
        '/warehouse-detail4': (context) => const WarehouseDetailPage4(),
        '/warehouse-detail5': (context) => const WarehouseDetailPage5(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
