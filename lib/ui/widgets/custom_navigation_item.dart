import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class CustomNavigationItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final double? iconSize;
  final String? title;
  final Color? color;

  const CustomNavigationItem({
    Key? key,
    required this.icon,
    this.iconSize,
    this.title,
    this.color = Colors.black,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(),
        Column(
          children: [
            Image.asset(
              icon,
              color: color,
              width: iconSize ?? 35,
              height: iconSize ?? 35,
            ),
            title != ''
                ? Text(
                    title ?? '',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: bold,
                      height: 1.3,
                    ),
                  )
                : Container()
          ],
        )
      ],
    );
  }
}
