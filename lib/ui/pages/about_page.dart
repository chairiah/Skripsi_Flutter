import 'package:aplikasi_skripsi_ch/ui/widgets/custom_textfield.dart';
import 'package:aplikasi_skripsi_ch/ui/widgets/custom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 380,
                  height: 280,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Image.asset(
                        'assets/images/Chairiah.jpg',
                        width: 150,
                      ),
                      Text(
                        'Chairiah',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 25,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, bottom: 120),
                    children: [
                      Column(
                        children: const [
                          SocialButton(
                            title: 'Nama',
                            icon: 'assets/images/icon_user.png',
                            url: '-',
                            content: 'Chairiah',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SocialButton(
                            title: 'Tempat, Tanggal Lahir',
                            icon: 'assets/images/icon_ttl.png',
                            url: '-',
                            content: 'Takengon, 11 Mei 2000',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SocialButton(
                            title: 'Telepon',
                            icon: 'assets/images/icon_whatsapp.png',
                            url: 'tel:6282276981188',
                            content: '082276981188',
                            isWhatsApp: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SocialButton(
                            title: 'Instagram',
                            icon: 'assets/images/icon_instagram.png',
                            url: 'https://www.instagram.com',
                            content: 'chairiah15',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SocialButton(
                            title: 'Email',
                            icon: 'assets/images/icon_email.png',
                            url: 'https://www.gmail.com',
                            content: 'chairiah2000@gmail.com',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
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
  final String title, icon, url, content;
  final bool isWhatsApp;
  const SocialButton({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
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
      var whatsapp = "+6285658069092";
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
          Image.asset(
            icon,
            width: 40,
            height: 40,
            color: kWhiteColor,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              ),
              Text(
                content,
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
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
