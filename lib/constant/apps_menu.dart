import 'package:flutter/material.dart';
import 'package:latihan_apps/constant/apps_field.dart';

import '../vo/menu_vo.dart';

class AppsMenu {
  static final AppsMenu _instance = AppsMenu();

  static AppsMenu get() => _instance;

  static const int kTypePurchaseAirTime = 1;
  static const int kTypePurchaseData = 2;
  static const int kTypePurchaseWallet = 3;
  static const int kTypeCardLess = 4;
  static const int kTypePaymentBPJS = 5;

  static MenuVO menuPurchase = MenuVO(
      iconData: Icons.shopping_cart,
      labelInd: 'Pembelian',
      children: <MenuVO>[
        menuAirTime,
        menuInternetVoucher,
        menuEwallet,
      ]);

  static MenuVO menuAirTime = MenuVO(
      iconData: Icons.phone_android,
      labelInd: 'PULSA',
      type: kTypePurchaseAirTime,
      smsSyntax:
          'PULSA @{$kParamNameSrac} @{$kParamNameDsac} @{$kParamNameAmount}');

  static MenuVO menuInternetVoucher = MenuVO(
      iconData: Icons.wifi,
      labelInd: 'PAKET DATA',
      type: kTypePurchaseData,
      smsSyntax:
          'PULSA @{$kParamNameSrac} @{$kParamNameDsac} @{$kParamNameAmount}');

  static MenuVO menuEwallet = MenuVO(
    iconData: Icons.wallet,
    labelInd: 'e-Wallet',
    type: kTypePurchaseWallet,
    smsSyntax:
        '@{$kParamNameBiller} @{$kParamNameSrac} @{$kParamNameDsac} @{$kParamNameAmount}',
  );

  static MenuVO menuCardLess = MenuVO(
    iconData: Icons.wallet_sharp,
    labelInd: 'Tarik Tunai',
    type: kTypeCardLess,
    smsSyntax: 'TARIKTUNAI @{$kParamNameSrac} @{$kParamNameAmount}',
  );

  static MenuVO menuBPJS = MenuVO(
    iconData: Icons.health_and_safety,
    labelInd: 'BPJS',
    type: kTypePaymentBPJS,
    smsSyntax:
    'BAYAR @{$kParamNameSrac} @{$kParamNameBiller} @{$kParamNameDsac} @{$kParamNameAmount}',
  );

  List<MenuVO> listMenu = [
    menuPurchase,
    menuCardLess,
    menuBPJS,
  ];


}
