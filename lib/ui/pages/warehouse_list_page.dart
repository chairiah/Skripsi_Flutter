import 'dart:convert';

import 'package:aplikasi_skripsi_ch/ui/widgets/custom_navigation_item.dart';
import 'package:aplikasi_skripsi_ch/ui/widgets/custom_warehouse_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';
import 'package:http/http.dart' as http;

class WarehouseListPage extends StatefulWidget {
  const WarehouseListPage({Key? key}) : super(key: key);

  @override
  State<WarehouseListPage> createState() => _WarehouseListPageState();
}

class _WarehouseListPageState extends State<WarehouseListPage> {
  var dataGudang;
  Future<void> ambilDataGudang() async {
    final response =
        await http.get(Uri.parse('https://ayo-wisuda.site/api/chairiah/index'));

    if (response.statusCode == 200) {
      dataGudang = jsonDecode(response.body.toString());
      return dataGudang;
    } else {
      throw Exception('Failed to load data');
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
                      FutureBuilder(
                        future: ambilDataGudang(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Expanded(
                              child: ListView.builder(
                                padding: const EdgeInsets.only(
                                  left: 40.0,
                                  bottom: 105.0,
                                ),
                                itemCount: dataGudang.length,
                                itemBuilder: (context, index) {
                                  final gudang = snapshot.data as List;
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/warehouse-detail',
                                        arguments: {
                                          'nama': gudang[index]['nama'],
                                          'alamat': gudang[index]['alamat'],
                                          'url_alamat': gudang[index]
                                              ['url_alamat'],
                                          'no_hp': gudang[index]['no_hp'],
                                          'gambar': gudang[index]['gambar'],
                                          'harga_kopi_gelondong': int.parse(
                                              gudang[index]
                                                  ['harga_kopi_gelondong']),
                                          'harga_kopi_gabah': int.parse(
                                              gudang[index]
                                                  ['harga_kopi_gabah']),
                                          'harga_kopi_biji_hijau': int.parse(
                                              gudang[index]
                                                  ['harga_kopi_biji_hijau']),
                                        },
                                      );
                                    },
                                    child: CustomWarehouseItem(
                                      image:
                                          'https://ayo-wisuda.site/storage/chairiah/gudang-image/${gudang[index]['gambar']}',
                                      title: gudang[index]['nama'],
                                      address: gudang[index]['alamat'],
                                    ),
                                  );
                                  // return Text(snapshot.data.toString());
                                },
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
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
