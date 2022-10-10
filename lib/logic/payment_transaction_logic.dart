
import 'package:latihan_apps/constant/apps_constant.dart';
import 'package:latihan_apps/constant/apps_field.dart';
import 'package:latihan_apps/logic/transaction_logic.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';

class PaymentTransactionLogic extends TransactionLogic {

  @override
  List<ContentInputVO> generateListContent() {
    List<ContentInputVO> listContentInput = [
      contentSrac,
      ContentInputVO(
          prefixIcon: 'assets/image/icons/fields/jumlah_bayar_field.png',
          suffixIcon: 'assets/image/icons/fields/arrow_down_field.png',
          label: 'Nominal',
          inputType: ContentInputType.list,
          paramName: kParamNameAmount,
          category: kCategoryDenomProvider),

    ];
    return listContentInput;
  }
}