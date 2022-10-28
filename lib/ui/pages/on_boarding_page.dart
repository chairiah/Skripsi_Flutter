import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:aplikasi_skripsi_ch/ui/widgets/custom_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 140,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_on_boarding_a.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_on_boarding_b.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Temukan Gudang Kopi \nPilihan Anda Tepat Waktu',
                  style: brownTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Mulai',
                  width: (MediaQuery.of(context).size.width / 2 - 30),
                  margin: const EdgeInsets.only(
                    top: 50,
                    bottom: 80,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                const SizedBox(width: 18),
              ],
            ),
          )
        ],
      ),
    );
  }
}
