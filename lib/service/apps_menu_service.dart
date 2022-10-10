import 'dart:async';

import 'package:flutter/material.dart';
import 'package:latihan_apps/constant/apps_array.dart';
import 'package:latihan_apps/constant/apps_constant.dart';
import 'package:latihan_apps/constant/apps_field.dart';
import 'package:latihan_apps/constant/apps_menu.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';
import 'package:latihan_apps/vo/selection_vo.dart';

class AppsMenuService {
  static const ID = 'AppsMenuService';

  static final AppsMenuService _instance = new AppsMenuService();

  static AppsMenuService get() => _instance;

  static final contentSrac = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_srac.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Daftar Rekening Sumber',
      inputType: ContentInputType.list,
      category: kCategorySrac,
      paramName: kParamNameSrac);
  static final contentSracInput = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_srac.png',
      label: 'Nomor Rekening',
      inputType: ContentInputType.numeric,
      paramName: kParamNameSrac);
  static final contentDsac = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_srac.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Rekening Tujuan',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);
  static final contentProxyNo = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_srac.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Proxy BI Fast Tujuan',
      inputType: ContentInputType.text,
      paramName: kParamNameProxyNo);

  //input numeric
  static final contentAmount = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      label: 'Jumlah',
      inputType: ContentInputType.numeric,
      paramName: kParamNameAmount);
  static final contentRefNo = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      label: 'Nomor Referensi',
      inputType: ContentInputType.numeric,
      paramName: kParamNameRefNo);

  static final contentDescription = ContentInputVO(
      label: 'Deskripsi',
      inputType: ContentInputType.multiline,
      paramName: kParamNameDescription);
  static final contentDescriptionBiFast = ContentInputVO(
      label: 'Deskripsi',
      inputType: ContentInputType.multiline,
      paramName: kParamNameDescription);
  static final contentNIK= ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/kode_ID_field.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'NIK',
      inputType: ContentInputType.numeric,
      paramName: kParamNameAmount);
  static final contentYear= ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_calendar.png',
      label: 'Tahun',
      inputType: ContentInputType.numeric,
      paramName: kParamNameAmount);

  //selection dsac
  static final contentPhoneNo = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/kode_ID_field.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Nomor Handphone',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);
  static final contentCardNumber = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/kartu_kredit_field.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Nomor Kartu',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);
  static final contentCustomerId = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/kode_ID_field.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'ID Pelanggan',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);
  static final contentCustomerIdBpjs = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/kode_ID_field.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'ID Pelanggan',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);
  static final contentPLNNonTag= ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/kode_ID_field.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Nomor Registrasi',
      inputType: ContentInputType.numeric,
      paramName: kParamNameDsac);
  static final contentBillingId = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_invoice.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Kode Billing',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);
  static final contentBillingNumber= ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_invoice.png',
      // suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Nomor Tagihan',
      inputType: ContentInputType.list,
      paramName: kParamNameDsac);

  //content denom
  static final contentDenomTopup = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Denom',
      inputType: ContentInputType.list,
      paramName: kParamNameAmount,
      category: kCategoryDenomProvider);
  static final contentDenomWallet= ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Denom',
      inputType: ContentInputType.list,
      paramName: kParamNameAmount,
      category: kCategoryDenomWallet);
  static final contentDenomData = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Denom',
      inputType: ContentInputType.list,
      paramName: kParamNameAmount);
  static final contentMonth = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Bulan',
      inputType: ContentInputType.list,
      paramName: kParamNameAmount,
      category: kCategoryMonth);
  static final contentCardless = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Denom',
      inputType: ContentInputType.list,
      paramName: kParamNameAmount,
      category: kCategoryCardless);

  //content biller
  static final contentProvider = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/isi_pulsa_field.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'List Provider',
      inputType: ContentInputType.list,
      paramName: kParamNameBiller,
      category: kCategoryProvider,
    childInputVO: contentDenomTopup
  );

  static final contentPaketData= ContentInputVO(
      prefixIcon: 'assets/image/icons/menu/menu_multipayment.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'List Provider',
      category: kCategoryProviderData,
      inputType: ContentInputType.list,
      paramName: kParamNameBiller);

  static final contentBillerEwallet= ContentInputVO(
      prefixIcon: 'assets/image/icons/menu/menu_multipayment.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'List Biller',
      category: kCategoryWallet,
      inputType: ContentInputType.list,
      paramName: kParamNameBiller);

  static final contentBillerGeneral= ContentInputVO(
      prefixIcon: 'assets/image/icons/menu/menu_multipayment.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Nama Biller',
      category: kCategoryAsuransi,
      inputType: ContentInputType.list,
      paramName: kParamNameBiller);
  static final contentBillerTelephone = ContentInputVO(
      prefixIcon: 'assets/image/icons/menu/menu_postpaid.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'List Provider',
      inputType: ContentInputType.list,
      paramName: kParamNameBiller,
      category: kCategoryTelephone);

  final Map<int, List<ContentInputVO>> _mapContent = {
    AppsMenu.kTypePurchaseAirTime: [
      contentSrac,
      contentProvider,
      contentDenomTopup,
      contentPhoneNo,
    ],
    AppsMenu.kTypePurchaseData: [
      contentSrac,
      contentPaketData,
      contentCustomerId,
      contentAmount,
    ],
    AppsMenu.kTypePurchaseWallet: [
      contentSrac,
      contentBillerEwallet,
      contentDenomData,
      contentPhoneNo
    ],

    AppsMenu.kTypeCardLess: [
      contentSrac,
      contentCardless,
    ],

    AppsMenu.kTypePaymentBPJS: [
      contentSrac,
      contentBillerGeneral,
      contentCustomerIdBpjs,
      contentMonth,
    ],
  }; // mapContent

  Map<int, List<SelectionVO>> get _mapSelection =>DataArray.get().mapSelection;

  List<SelectionVO> populateListSelection(int category) {
    debugPrint('category : $category');
    List<SelectionVO> list = [];
    List<SelectionVO>? listSelection = _mapSelection[category];
    debugPrint('listSelection : $listSelection');
    if (listSelection != null) list.addAll(listSelection);
    return list;
  }

  // Future<List<SelectionVO>> getListSelection(int category) async {
  //   List<SelectionVO> list = [];
  //   List<SelectionVO>? listSelection = _mapSelection[category];
  //   if (listSelection != null) list.addAll(listSelection);
  //
  //   return list;
  // } // getListSelection

  List<ContentInputVO> getListContent(int menuType) {
    List<ContentInputVO> list = _mapContent[menuType] ?? [];

    for (var vo in list) {
      if (vo.inputType == ContentInputType.list) {
        // populate list if necessary
        vo.selections = _mapSelection[vo.category] ?? [];
      }
    }

    // for (var vo in list!) {
    //   if (vo.parentId > 0) {
    //     // need to get parent
    //     for (var c in list) {
    //       if (c.id == ContentInputVO.parentId) {
    //         ContentInputVO.parentVO = c;
    //         break;
    //       }
    //     }
    //   }
    // } // loop ContentInputVO -> check parentId
    return list;
  } // getListContent

}
