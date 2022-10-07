import 'package:aplikasi_skripsi_ch/ui/widgets/custom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class WarehouseDetailPage extends StatelessWidget {
  const WarehouseDetailPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
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
            SizedBox(
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
                        Image.network(
                          'https://ayo-wisuda.site/storage/chairiah/gudang-image/${arguments['gambar']}',
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
                            arguments['nama'],
                            style: brownTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchUrl(Uri.parse(arguments['url_alamat']));
                            },
                            child: Text(
                              arguments['alamat'],
                              style: brownTextStyle.copyWith(
                                fontSize: 13,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          SocialButton(
                            url: 'tel:62${arguments['no_hp'].substring(1)}',
                            content: arguments['no_hp'],
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
                                    arguments['harga_kopi_gelondong'] != 0
                                        ? NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp ',
                                            decimalDigits: 0,
                                          ).format(
                                            arguments['harga_kopi_gelondong'],
                                          )
                                        : 'Tidak menerima kopi jenis ini',
                                    style: whiteTextStyle.copyWith(
                                      fontSize:
                                          arguments['harga_kopi_gelondong'] != 0
                                              ? 18
                                              : 10,
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
                                    arguments['harga_kopi_gabah'] != 0
                                        ? NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp ',
                                            decimalDigits: 0,
                                          ).format(
                                            arguments['harga_kopi_gabah'],
                                          )
                                        : 'Tidak menerima kopi jenis ini',
                                    style: whiteTextStyle.copyWith(
                                      fontSize:
                                          arguments['harga_kopi_gabah'] != 0
                                              ? 18
                                              : 10,
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
                                    arguments['harga_kopi_biji_hijau'] != 0
                                        ? NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp ',
                                            decimalDigits: 0,
                                          ).format(
                                            arguments['harga_kopi_biji_hijau'],
                                          )
                                        : 'Tidak menerima kopi jenis ini',
                                    style: whiteTextStyle.copyWith(
                                      fontSize:
                                          arguments['harga_kopi_biji_hijau'] !=
                                                  0
                                              ? 18
                                              : 10,
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
