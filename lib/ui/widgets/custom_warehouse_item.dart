import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class CustomWarehouseItem extends StatelessWidget {
  final String image, title, address;
  const CustomWarehouseItem({
    Key? key,
    required this.image,
    required this.title,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
            child: Image.network(
              image,
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: whiteTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  address,
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
            ),
          )
        ],
      ),
    );
  }
}
