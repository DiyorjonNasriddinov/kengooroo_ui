import 'package:flutter/material.dart';

abstract class KuiFontFamilies {
  static const String unbounded = "Unbounded";
  static const String tildaSans = "TildaSans";
}

class KuiTextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 40,
    height: 1.2,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.unbounded,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 32,
    height: 34 / 32,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.unbounded,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 24,
    height: 1.25,
    fontWeight: FontWeight.w500,
    fontFamily: KuiFontFamilies.unbounded,
  );
  static const TextStyle h4 = TextStyle(
    fontSize: 20,
    height: 1.3,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.unbounded,
  );
  static const TextStyle h5 = TextStyle(
    fontSize: 20,
    height: 1.1,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.tildaSans,
  );

  static const TextStyle t1 = TextStyle(
    fontSize: 40,
    height: 1.2,
    fontWeight: FontWeight.w500,
    fontFamily: KuiFontFamilies.unbounded,
  );
  static const TextStyle t2 = TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.unbounded,
  );
  static const TextStyle t3 = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.normal,
    fontFamily: KuiFontFamilies.unbounded,
  );

  static const TextStyle text18Bold = TextStyle(
    fontSize: 18,
    height: 22 / 18,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.tildaSans,
  );
  static const TextStyle text18Semibold = TextStyle(
    fontSize: 18,
    height: 22 / 18,
    fontWeight: FontWeight.w600,
    fontFamily: KuiFontFamilies.tildaSans,
  );

  static const TextStyle text16Bold = TextStyle(
    fontSize: 16,
    height: 18 / 16,
    fontWeight: FontWeight.bold,
    fontFamily: KuiFontFamilies.tildaSans,
  );
  static const TextStyle text16Semibold = TextStyle(
    fontSize: 16,
    height: 18 / 16,
    fontWeight: FontWeight.w600,
    fontFamily: KuiFontFamilies.tildaSans,
  );

  static const TextStyle text14 = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w600,
    fontFamily: KuiFontFamilies.tildaSans,
  );

  static const TextStyle subscription = TextStyle(
    fontSize: 12,
    height: 14 / 12,
    fontWeight: FontWeight.normal,
    fontFamily: KuiFontFamilies.tildaSans,
  );
  static const TextStyle link18 = TextStyle(
    fontSize: 18,
    height: 22 / 18,
    fontWeight: FontWeight.w600,
    fontFamily: KuiFontFamilies.tildaSans,
  );
  static const TextStyle link16 = TextStyle(
    fontSize: 16,
    height: 20 / 16,
    fontWeight: FontWeight.w600,
    fontFamily: KuiFontFamilies.tildaSans,
  );
}
