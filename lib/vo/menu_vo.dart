import 'package:flutter/material.dart';

class MenuVO {
  final IconData iconData;
  final String labelInd;
  final String smsSyntax;
  final String ussdSyntax;
  final int category;
  final int type;
  final List<MenuVO> children;

  MenuVO({
    required this.iconData,
    required this.labelInd,
    this.smsSyntax = '',
    this.ussdSyntax = '',
    this.type = 0,
    this.category = 0,
    this.children = const <MenuVO>[],
  });

  bool get leaf => children.isEmpty;

}