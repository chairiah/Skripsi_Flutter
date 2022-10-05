import 'package:aplikasi_skripsi_ch/ui/widgets/custom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class WarehouseDetailPage2 extends StatelessWidget {
  const WarehouseDetailPage2({Key? key}) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

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
              height: 300,
              child: Image.asset(
                'assets/images/bg_details_a.png',
                width: 180,
              ),
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/tiara_coffe.jpg',
                          width: 150,
                          height: 110,
                          fit: BoxFit.cover,
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
                            'Tiara Global Coffe',
                            style: brownTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchUrl(Uri.parse(
                                  'https://goo.gl/maps/1vgXPtmKtFFSYEu59'));
                            },
                            child: Text(
                              'Mekar Jadi Ayu, Jl. Tawardi, Kec. Wih Pesam, Kabupaten Bener Meriah, Aceh 24471',
                              style: brownTextStyle.copyWith(
                                fontSize: 13,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          const SocialButton(
                            url: 'tel:625213133737',
                            content: '085213133737',
                            isWhatsApp: true,
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
                          left: 40.0, bottom: 100.0, top: 5.0),
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
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                    'assets/images/kp_gelondong.png'),
                                radius: 40,
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rp -',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Kopi Gelondong / Kg',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
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
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/images/kp_gabah.jpg'),
                                radius: 40,
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rp 35.000,00',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Kopi Gabah / Kg',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
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
                              const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/images/kp_bhijau.png'),
                                radius: 40,
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rp 75.000,00',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Text(
                                    'Kopi Biji Hijau / Kg',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
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
            customNavigation()
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String url, content;
  final bool isWhatsApp;
  const SocialButton({
    Key? key,
    required this.content,
    required this.url,
    this.isWhatsApp = false,
  }) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    _launchWhatsapp() async {
      var whatsapp = "62${content.substring(1, content.length)}";
      var whatsappAndroid =
          Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
      if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("WhatsApp is not installed on the device"),
          ),
        );
      }
    }

    return GestureDetector(
      onTap: () {
        isWhatsApp ? _launchWhatsapp() : _launchUrl(Uri.parse(url));
      },
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content,
                style: brownTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
