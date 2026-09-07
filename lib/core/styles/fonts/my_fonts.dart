import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Every text size in the app comes from here — no raw font sizes in widgets.
class MyFonts {
  const MyFonts._();

  // Display — hero headline, section badge names, footer headline.
  static TextStyle get display96 =>
      TextStyle(fontSize: 96.sp, fontWeight: FontWeight.w900, height: 1.02);
  static TextStyle get display64 =>
      TextStyle(fontSize: 64.sp, fontWeight: FontWeight.w900, height: 1.05);
  static TextStyle get display48 =>
      TextStyle(fontSize: 48.sp, fontWeight: FontWeight.w800, height: 1.08);
  static TextStyle get display36 =>
      TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w800, height: 1.12);

  // Headings.
  static TextStyle get bold28 =>
      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700, height: 1.2);
  static TextStyle get bold22 =>
      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700, height: 1.25);
  static TextStyle get bold18 =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700, height: 1.3);
  static TextStyle get semi16 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, height: 1.35);

  // Statement copy — About's large, lighter sentences.
  static TextStyle get statement26 =>
      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w300, height: 1.5);
  static TextStyle get statement20 =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300, height: 1.6);

  // Body.
  static TextStyle get regular16 =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, height: 1.6);
  static TextStyle get regular14 =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, height: 1.55);
  static TextStyle get regular12 =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, height: 1.5);

  // Small caps / label treatment — date ranges, category tags, vertical labels.
  static TextStyle get caps14 => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 2.4,
    height: 1.4,
  );
  static TextStyle get caps12 => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 2.0,
    height: 1.4,
  );
  static TextStyle get caps10 => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 3.0,
    height: 1.4,
  );

  // Project row index (01 / 02 / 03) and experience index (/01).
  static TextStyle get index20 => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.5,
  );
}
