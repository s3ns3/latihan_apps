import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:latihan_apps/constant/apps_constant.dart';

class CommonUtil {
  static const id = 'CommonUtil';
  static const kAlphaNum = '1234567890qwertyuiopasdfghjklzxcvbnm';

  static final rng = Random();

  static String generateRandomAlphabet(int length) {
    StringBuffer sb = StringBuffer();
    for (int i = 0; i < length; i++) {
      var idx = rng.nextInt(kAlphaNum.length);
      sb.write(kAlphaNum[idx]);
    }
    return sb.toString();
  }

  static String displaySeconds(int seconds) {
    int s = seconds;
    int h = s ~/ 3600;
    s = s - (h * 3600);
    int m = s ~/ 60;
    s = s - (m * 60);
    String sh = (h > 10) ? '$h' : '0$h';
    String sm = (m > 10) ? '$m' : '0$m';
    String ss = (s > 10) ? '$s' : '0$s';
    return '$sh:$sm:$ss';
  }

  static String maskData(String accountNo) {
    if (accountNo.length > 4) {
      return '****' + accountNo.substring(accountNo.length - 4);
    } else {
      return '****';
    }
  }

  static DateTime? tryParseMillisecondToDate(int millies) {
    if (millies == 0) {
      return null;
    } else {
      return DateTime.fromMillisecondsSinceEpoch(millies);
    }
  }

  // convert from 10000 to 10.000
  static final numberFormatter = NumberFormat('#,##0');
  static String displayTextMoney(String textMoney) {
    int m = int.tryParse(textMoney) ?? 0;
    if (m == 0) return '';
    return numberFormatter.format(m);
  }

  // convert from 10.000 to 10000
  static String parseTextMoney(String displayedMoney) {
    try {
      num m = numberFormatter.parse(displayedMoney);
      return NumberFormat('###0').format(m);
    } catch (e) {
      return '0';
    }
  }

  static TextStyle textStyle(
      {double fontSize = kFontSizeSmall,
      Color color = Colors.black,
      FontWeight fontWeight = FontWeight.normal,
      FontStyle fontStyle = FontStyle.normal,
      TextDecoration textDecoration = TextDecoration.none}) {
    TextStyle fontStyle;

    if (Platform.isIOS) {
      fontStyle = TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
//          fontFamily: 'Helvetica Neue',
          decoration: textDecoration,
          inherit: true);
    } else if (Platform.isAndroid) {
      fontStyle = TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'SFProDisplay',
          decoration: textDecoration,
          inherit: true);
    } else {
      fontStyle = TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
//          fontFamily: 'Helvetica Neue',
          decoration: textDecoration,
          inherit: true);
    }
    return fontStyle;
  }

  static String censorString(String original) {
    String newValue = '';
    for (int i = 0; i < original.length; i++) {
      newValue += Random().nextBool() ? original[i] : '*';
    }
    return newValue;
  }
}
