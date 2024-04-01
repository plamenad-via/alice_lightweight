import 'package:alice_lightweight/utils/alice_custom_colors.dart';
import 'package:flutter/material.dart';

class AliceConstants {
  static Color red(AliceCustomColors customColors) =>
      customColors.red ?? const Color(0xffff3f34);
  static Color lightRed(AliceCustomColors customColors) =>
      customColors.lightRed ?? const Color(0xffff5e57);
  static Color green(AliceCustomColors customColors) =>
      customColors.green ?? const Color(0xff05c46b);
  static Color grey(AliceCustomColors customColors) =>
      customColors.grey ?? const Color(0xff808e9b);
  static Color orange(AliceCustomColors customColors) =>
      customColors.orange ?? const Color(0xffffa801);
  static Color white(AliceCustomColors customColors) =>
      customColors.white ?? const Color(0xffffffff);
}
