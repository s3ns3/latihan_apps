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
  String? label;
  String? prefixIcon; // use Image.asset for prefix
  final String? suffixIcon;
  final bool hasNext; // flag to indicate action next or done
  final ContentInputType inputType;
  final int category;
  // final bool obscureText;
  // final String regex;

  final List<SelectionVO> _selections = [];
  SelectionVO? _selectedItem;
  //NEVER USE UI COMPONENT in logic / data
  //TextEditingController? _textController; // only applicable if type = list

  String inputValue = '';
  DateTime? _inputDate;
  DateTime? firstDate; // used with inputType.date for firstDate
  DateTime? lastDate; // used with inputType.date for lastDate

  // for dependent list
  ContentInputVO? childInputVO;  // for list depends on list
  int _parentFilterId = 0; // parent selected id

  set inputDate(DateTime? date) {
    _inputDate = date;
    if (_inputDate == null) {
      inputValue = '';
    } else {
      inputValue = DateFormat(kFormatDateDisplay).format(_inputDate!);
    }
  }

  DateTime? get inputDate => _inputDate;

  set selections(List<SelectionVO> list) {
    _selections..clear()..addAll(list);
    selectedItem = null;
  }
  List<SelectionVO> get selections {
    if (_parentFilterId == 0) {
      // no parentFilter is set
      if (_selections.isNotEmpty) {
        // if list not empty, then it means parent has not been selected
        if (_selections[0].parentId > 0) return [];
      }
      return _selections;
    } else {
      // parentFilter is set
      List<SelectionVO> filtered = [];
      for (var item in _selections) {
        if (item.parentId == _parentFilterId) {
          // only get item when parentFilter is the same
          filtered.add(item);
        }
      }
      return filtered;
    }
  }

  set parentFilterId(int id) {
    if (_parentFilterId == id) return;
    _parentFilterId = id;
    selectedItem = null;
  }
  int get parentFilterId => _parentFilterId;


  set selectedItem(SelectionVO? selected) {
    _selectedItem = selected;
    inputValue = _selectedItem?.display ?? '';
    // inputValue = selected?.valueSms ?? '';
    // _textController?.text = selectedItem?.display ?? '';

    // if childInput exists, then we need to inform that parent is changing
    childInputVO?.parentFilterId = _selectedItem?.id??0;
  }
  SelectionVO? get selectedItem => _selectedItem;

  // set textController(TextEditingController textEditingController) {
  //   _textController = textEditingController;
  //   _textController?.text = selectedItem?.display ?? '';
  // }

  ContentInputVO({
    required this.paramName,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.hasNext = false,
    required this.inputType,
    this.inputValue = '',
    this.category = 0,
    this.childInputVO
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
