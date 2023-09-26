import 'package:flutter/material.dart';

class Storage {
  int id;
  String storageTittle;
  String storageDate;
  Color color;
  Color? containerColor;

  Storage(
      {required this.id,
      required this.storageTittle,
      required this.storageDate,
      required this.color}) {
    if (color == const Color(0xff415EB6)) {
      containerColor = const Color(0xffEEF7FE);
    } else if (color == const Color(0xffFFB110)) {
      containerColor = const Color(0xffEEF7FE);
    } else if (color == const Color(0xff23B0B0)) {
      containerColor = const Color(0xffF0FFFF);
    } else if (color == const Color(0xffAC4040)) {
      containerColor = const Color(0xffFEEEEE);
    } else {
      containerColor = const Color(0xffffffff);
    }
  }
}
