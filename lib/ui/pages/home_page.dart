import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                    'assets/images/bg_home_a.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: kBackgroundColor.withOpacity(0.1),
                            blurRadius: 15,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Icon(
                        Icons.menu,
                        color: kWhiteColor,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Column(
                  children: [
                    Text(
                      'Halo, Selamat Datang di\nGudang Kami!!!',
                      style: brownTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/warehouse-list');
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            margin: const EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width / 2 - 40,
                            height: 335,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/rumah.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: kPrimaryColor,
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Gudang Kopi',
                                style: brownTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/about');
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            margin: const EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width / 2 - 40,
                            height: 335,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/ch.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: kPrimaryColor,
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Tentang',
                                style: brownTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
