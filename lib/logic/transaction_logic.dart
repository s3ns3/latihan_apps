
import 'package:flutter/foundation.dart';
import 'package:latihan_apps/constant/apps_constant.dart';
import 'package:latihan_apps/constant/apps_field.dart';
import 'package:latihan_apps/constant/rc_constant.dart';
import 'package:latihan_apps/service/apps_menu_service.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';
import 'package:latihan_apps/vo/service_response_vo.dart';

class TransactionLogic {
  final List<ContentInputVO> listContentInput = [];

  final contentSrac = ContentInputVO(
      prefixIcon: 'assets/image/icons/fields/ic_srac.png',
      suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
      label: 'Daftar Rekening Sumber',
      inputType: ContentInputType.list,
      category: kCategorySrac,
      paramName: kParamNameSrac);

  List<ContentInputVO> generateListContent() {
    List<ContentInputVO> listContentInput = [
      contentSrac,
      ContentInputVO(
          prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
          suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
          label: 'Denom',
          inputType: ContentInputType.list,
          paramName: kParamNameAmount,
          category: kCategoryDenomProvider),

    ];
    return listContentInput;
  }

  Future<ServiceResponseVO> initLogic(int menuType) async {
    debugPrint('[TransactionLogic] initLogic $menuType');
    listContentInput.clear();
    List<ContentInputVO> list = AppsMenuService.get().getListContent(menuType);
    if (list.isNotEmpty) listContentInput.addAll(list);
    return ServiceResponseVO(rcSuccess, '');
  }

  bool needDisplayInput(ContentInputVO inputVO) {
    if (inputVO.category == kCategoryMonth) {
      // check if biller is bpjs kesehatan
      bool billerBpjsKes = false;
      for (final vo in listContentInput) {
        if (vo.category == kCategoryAsuransi) {
          if (vo.inputValue == 'BPJS Kesehatan') {
            billerBpjsKes = true;
          }
          break;
        }
      }
      return billerBpjsKes;
    } else {
      return true;
    }
  }
}