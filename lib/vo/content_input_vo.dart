import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:latihan_apps/vo/selection_vo.dart';

// numericPhoneNo disable textController,
// because it seems that the field cannot be entered in the first time if using textController
// money will inserts dot for every thousand
const kFormatDateDisplay =
    'yyyy-MM-dd';
enum ContentInputType { text, multiline, password, numeric, list,listImage, date, numericPhoneNo, money,search }

class ContentInputVO {
  final String? paramName;
  final String? label;
  String? prefixIcon; // use Image.asset for prefix
  final String? suffixIcon;
  final bool hasNext; // flag to indicate action next or done
  final ContentInputType inputType;
  final int category;
  // final bool obscureText;
  // final String regex;

  // cannot be final because initialize in init, not in constructor
  List<SelectionVO> selections = [];
  TextEditingController? _textController; // only applicable if type = list

  String inputValue = '';
  DateTime? _inputDate;
  DateTime? firstDate; // used with inputType.date for firstDate
  DateTime? lastDate; // used with inputType.date for lastDate

  set inputDate(DateTime? date) {
    _inputDate = date;
    if (_inputDate == null) {
      inputValue = '';
    } else {
      inputValue = DateFormat(kFormatDateDisplay).format(_inputDate!);
    }
  }

  DateTime? get inputDate => _inputDate;

  set selectedItem(SelectionVO? selected) {
    inputValue = selected?.valueSms ?? '';
    _textController?.text = selectedItem?.display ?? '';
  }

  SelectionVO? get selectedItem {
    for (var item in selections) {
      if (item.valueSms == inputValue) return item;
    }
    return null;
  }

  set textController(TextEditingController textEditingController) {
    _textController = textEditingController;
    _textController?.text = selectedItem?.display ?? '';
  }

  ContentInputVO({
    required this.paramName,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.hasNext = false,
    required this.inputType,
    this.inputValue = '',
    this.category = 0,
    });

  @override
  String toString() {
    return 'ContentInputVO{paramName: $paramName'
        ', label: $label'
        ', prefixIcon: $prefixIcon'
        ', suffixAssetName: $suffixIcon'
        ', hasNext: $hasNext'
        ', inputType: $inputType'
        ', inputValue: $inputValue'
        '}';
  }
}
