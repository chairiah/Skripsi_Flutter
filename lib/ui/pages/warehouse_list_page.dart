import 'package:aplikasi_skripsi_ch/ui/widgets/custom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class WarehouseListPage extends StatelessWidget {
  const WarehouseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 90,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.4),
                blurRadius: 30,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: CustomNavigationItem(
                  icon: 'assets/images/icon_home.png',
                  iconSize: 40,
                  title: 'Home',
                  color: kPrimaryColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: CustomNavigationItem(
                  icon: 'assets/images/icon_about.png',
                  iconSize: 40,
                  title: 'About',
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 30,
                        ),
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
                          padding: const EdgeInsets.only(
                            left: 40.0,
                            bottom: 105.0,
                          ),
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/warehouse-detail');
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
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
                                    Image.asset(
                                      'assets/images/oro_coffe.jpg',
                                      width: 110,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    // const Spacer(),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Oro Coffee',
                                            style: whiteTextStyle.copyWith(
                                              fontSize: 15,
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Text(
                                            'Jl. Mongal Bebesen',
                                            style: whiteTextStyle.copyWith(
                                              fontSize: 13,
                                              fontWeight: bold,
                                            ),
                                            // overflow: TextOverflow.ellipsis,
                                          ),
                                          Icon(
                                            Icons.arrow_right_alt,
                                            size: 35,
                                            color: kWhiteColor,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/warehouse-detail2');
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
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
                                    Image.asset(
                                      'assets/images/tiara_coffe.jpg',
                                      width: 110,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Tiara Global Coffe',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 15,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          'Jl. Lukup Sabun',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 13,
                                            fontWeight: bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt,
                                          size: 35,
                                          color: kWhiteColor,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/warehouse-detail3');
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
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
                                    Image.asset(
                                      'assets/images/gdselamat.jpg',
                                      width: 110,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Gudang Kopi H.Selamat',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 15,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          'Jl. Bebesen, Takengon',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 13,
                                            fontWeight: bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt,
                                          size: 35,
                                          color: kWhiteColor,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/warehouse-detail4');
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
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
                                    Image.asset(
                                      'assets/images/iy.jpg',
                                      width: 110,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Gudang Ilham Yunus',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 15,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          'Jl. Simpang 4, Takengon',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 13,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt,
                                          size: 35,
                                          color: kWhiteColor,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/warehouse-detail5');
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
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
                                    Image.asset(
                                      'assets/images/jg.jpg',
                                      width: 110,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Gudang Jikri Gayo',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 15,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          'Jl. Simpang 4, Takengon',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 13,
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt,
                                          size: 35,
                                          color: kWhiteColor,
                                        )
                                      ],
                                    )
                                  ],
                                ),
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
            customNavigation()
          ],
        ),
      ),
    );
  }
}
