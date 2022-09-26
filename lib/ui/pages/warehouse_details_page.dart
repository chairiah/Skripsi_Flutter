import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class WarehouseDetailPage extends StatelessWidget {
  const WarehouseDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              child: Image.asset(
                'assets/images/bg_details_a.png',
                width: 180,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30, left: 10),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/rumah.jpg',
                          width: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aman Kuba Kopi!!!',
                            style: brownTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'Jln. Simpang 4 Lemah',
                            style: brownTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            '082233445566',
                            style: brownTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView(
                      padding: const EdgeInsets.only(
                          left: 40.0, bottom: 5.0, top: 5.0),
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 90,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/rumah.jpg'),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Kopi Gelondong / Kg',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Rp 80.000,00',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 90,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/rumah.jpg'),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Kopi Gabah / Kg',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Rp 80.000,00',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 90,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/rumah.jpg'),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Kopi Biji Hijau / Kg',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Rp 80.000,00',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 90,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/rumah.jpg'),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Butik Ch',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Jalan-Jalan Terus',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
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
