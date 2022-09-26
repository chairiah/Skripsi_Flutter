import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class WarehouseListPage extends StatelessWidget {
  const WarehouseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg_details.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
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
                              blurRadius: 20,
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Daftar Gudang\nKopi!!!',
                          style: brownTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(left: 40.0),
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
                          height: 140,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/rumah.jpg'),
                              const Spacer(),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Butik Ch',
                                      style: brownTextStyle.copyWith(
                                        fontSize: 20,
                                        fontWeight: bold,
                                      ),
                                    ),
                                    Text(
                                      'Jalan-Jalan Terus Jalan-Jalan Terus Jalan-Jalan Terus',
                                      style: brownTextStyle.copyWith(
                                        fontSize: 15,
                                        fontWeight: bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/warehouse-detail');
                                      },
                                      child: Icon(
                                        Icons.arrow_right,
                                        size: 55,
                                        color: kBrownColor,
                                      ),
                                    )
                                  ],
                                ),
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
                          height: 140,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
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
                                children: [
                                  Text(
                                    'Butik Ch',
                                    style: brownTextStyle.copyWith(
                                      fontSize: 20,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Jalan-Jalan Terus',
                                    style: brownTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/warehouse-detail');
                                    },
                                    child: Icon(
                                      Icons.arrow_right,
                                      size: 55,
                                      color: kBrownColor,
                                    ),
                                  )
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
                          height: 140,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
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
                                children: [
                                  Text(
                                    'Butik Ch',
                                    style: brownTextStyle.copyWith(
                                      fontSize: 20,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Jalan-Jalan Terus',
                                    style: brownTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/warehouse-detail');
                                    },
                                    child: Icon(
                                      Icons.arrow_right,
                                      size: 55,
                                      color: kBrownColor,
                                    ),
                                  )
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
                          height: 140,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
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
                                children: [
                                  Text(
                                    'Butik Ch',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 20,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Jalan-Jalan Terus',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 55,
                                    color: kWhiteColor,
                                  )
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
                          height: 140,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
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
                                children: [
                                  Text(
                                    'Butik Ch',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 20,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Jalan-Jalan Terus',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 55,
                                    color: kWhiteColor,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
