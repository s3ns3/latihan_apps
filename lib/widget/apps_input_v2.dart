import 'package:flutter/material.dart';
import 'package:latihan_apps/constant/apps_constant.dart';
import 'package:latihan_apps/util/common_util.dart';
import 'package:latihan_apps/util/debouncer_util.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';
import 'package:latihan_apps/widget/search_combobox_v2.dart';

class AppsInputV2 extends StatefulWidget {
  final ContentInputVO inputVO;
  final Function(String value)? onSubmitted;

  const AppsInputV2({Key? key, required this.inputVO, this.onSubmitted})
      : super(key: key);

  @override
  State createState() => AppsInputState();
}

class AppsInputState extends State<AppsInputV2> {
  static const id = 'AppsInputState';

  final _textController = TextEditingController();
  final _debouncer = DebouncerUtil();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.inputVO.prefixIcon = null;
    if (widget.inputVO.inputType == ContentInputType.list) {
      return SearchComboboxV2(
        inputVO: widget.inputVO,
        onSubmitted: widget.onSubmitted,
      );
    }else if (widget.inputVO.inputType == ContentInputType.date) {
      return _displayInputDate(context);
    } else if (widget.inputVO.inputType == ContentInputType.numericPhoneNo) {
      return _displayInputTextNotController(context);
    } else if (widget.inputVO.inputType == ContentInputType.money) {
      return _displayInputMoney(context);
    } else if (widget.inputVO.inputType == ContentInputType.search) {
      return _displayInputSearch(context);
    } else {
      return _displayInputText(context);
    }
  }

  Widget _displayInputText(BuildContext context) {
    _textController.text = widget.inputVO.inputValue;

    TextInputType inputType = TextInputType.text;
    if (widget.inputVO.inputType == ContentInputType.numeric) {
      inputType = TextInputType.number;
    } else if (widget.inputVO.inputType == ContentInputType.multiline) {
      inputType = TextInputType.multiline;
    }
    TextInputAction? inputAction;
    if (widget.inputVO.inputType != ContentInputType.multiline ||
        widget.inputVO.inputType == ContentInputType.numeric) {
      inputAction =
          widget.inputVO.hasNext ? TextInputAction.next : TextInputAction.done;
    }

    Widget? prefixIcon;
    if (widget.inputVO.prefixIcon != null) {
      prefixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 25.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.grey,
          ));
    }
    Widget? suffixIcon;
    if (widget.inputVO.suffixIcon != null) {
      suffixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.suffixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.grey,
          ));
    }
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: TextField(
          style: CommonUtil.textStyle(
              color: Colors.black,
              fontSize: kFontSizeMedium,
              fontWeight: FontWeight.w700),
          maxLines:
              widget.inputVO.inputType == ContentInputType.multiline ? 4 : 1,
          keyboardType: TextInputType.text,
          controller: _textController,
          textInputAction: inputAction,
          obscureText: false,
          decoration: inputDecoration(prefixIcon, suffixIcon),
          onChanged: (value) {
            // debugPrint("onchange $value");
            widget.inputVO.inputValue = value;
            _debouncer(() {
              if (widget.onSubmitted != null) {
                widget.onSubmitted!(value);
              }
            });
          },
          //onSubmitted: widget.onSubmitted
        ));
  }

  Widget _displayInputMoney(BuildContext context) {
    // based on https://stackoverflow.com/questions/51127241/how-do-you-change-the-value-inside-of-a-textfield-flutter?rq=1
    String moneyValue = CommonUtil.displayTextMoney(widget.inputVO.inputValue);
    _textController.value = TextEditingValue(
      text: moneyValue,
      selection: TextSelection.fromPosition(
        TextPosition(offset: moneyValue.length),
      ),
    );

    TextInputAction? inputAction;
    if (widget.inputVO.inputType != ContentInputType.multiline ||
        widget.inputVO.inputType == ContentInputType.numeric) {
      inputAction =
          widget.inputVO.hasNext ? TextInputAction.next : TextInputAction.done;
    }

    Widget? prefixIcon;
    if (widget.inputVO.prefixIcon != null) {
      prefixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.blue,
          ));
    }
    Widget? suffixIcon;
    if (widget.inputVO.suffixIcon != null) {
      suffixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.suffixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.blue,
          ));
    }
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: TextField(
          controller: _textController,
          style: CommonUtil.textStyle(
              color: Colors.black,
              fontSize: kFontSizeMedium,
              fontWeight: FontWeight.w700),
          maxLines:
              widget.inputVO.inputType == ContentInputType.multiline ? 4 : 1,
          keyboardType: TextInputType.number,
          textInputAction: inputAction,
          obscureText: widget.inputVO.inputType == ContentInputType.password,
          decoration: inputDecoration(prefixIcon, suffixIcon),
          onChanged: (value) {
            // debugPrint("onchange $value");
            widget.inputVO.inputValue = CommonUtil.parseTextMoney(value);
            String moneyValue =
                CommonUtil.displayTextMoney(widget.inputVO.inputValue);
            _textController.value = TextEditingValue(
              text: moneyValue,
              selection: TextSelection.fromPosition(
                TextPosition(offset: moneyValue.length),
              ),
            );

            _debouncer(() {
              if (widget.onSubmitted != null) {
                widget.onSubmitted!(value);
              }
            });
          },
          //onSubmitted: widget.onSubmitted
        ));
  }

  Widget _displayInputTextNotController(BuildContext context) {
    TextInputType inputType = TextInputType.number;
    TextInputAction? inputAction =
        widget.inputVO.hasNext ? TextInputAction.next : TextInputAction.done;

    Widget? prefixIcon;
    if (widget.inputVO.prefixIcon != null) {
      prefixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.blue,
          ));
    }
    Widget? suffixIcon;
    if (widget.inputVO.suffixIcon != null) {
      suffixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.suffixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.blue,
          ));
    }
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: TextField(
          style: CommonUtil.textStyle(
              color: Colors.black,
              fontSize: kFontSizeMedium,
              fontWeight: FontWeight.w700),
          maxLines:
              widget.inputVO.inputType == ContentInputType.multiline ? 4 : 1,
          keyboardType: TextInputType.text,
          controller: _textController,
          textInputAction: inputAction,
          obscureText: false,
          decoration: inputDecoration(prefixIcon, suffixIcon),
          onChanged: (value) {
            // debugPrint("onchange $value");
            widget.inputVO.inputValue = value;
            _debouncer(() {
              if (widget.onSubmitted != null) {
                widget.onSubmitted!(value);
              }
            });
          },
          //onSubmitted: widget.onSubmitted
        ));
  }

  Widget _displayInputDate(BuildContext context) {
    _textController.text = widget.inputVO.inputValue;
    Widget? prefixIcon;
    if (widget.inputVO.prefixIcon != null) {
      prefixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.white,
          ));
    }
    Widget suffixIcon = const Padding(
        padding:  EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
        child:Icon(
          Icons.date_range,
          color: Colors.black54,
        ));
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      // color: kColorPrimary,
      child: TextField(
          style: CommonUtil.textStyle(
              color: Colors.black,
              fontSize: kFontSizeMedium,
              fontWeight: FontWeight.w700),
          controller: _textController,
          decoration: inputDecoration(prefixIcon, suffixIcon),
          readOnly: true,
          textInputAction: widget.inputVO.hasNext
              ? TextInputAction.next
              : TextInputAction.done,
          onTap: () async {
            const duration = Duration(days: 360);
            DateTime initialDate = widget.inputVO.inputDate ?? DateTime.now();
            DateTime firstDate =
                widget.inputVO.firstDate ?? DateTime.now().subtract(duration);
            DateTime lastDate =
                widget.inputVO.firstDate ?? DateTime.now().add(duration);

            final date = await showDatePicker(
                context: context,
                initialDate: initialDate,
                firstDate: DateTime(1950, 8),
                lastDate: initialDate);
            widget.inputVO.inputDate = date;
            _textController.text = widget.inputVO.inputValue;
          },
          onSubmitted: widget.onSubmitted),
    );
  }

  Widget _displayInputSearch(BuildContext context) {
    _textController.text = widget.inputVO.inputValue;

    TextInputAction? inputAction;
    if (widget.inputVO.inputType != ContentInputType.multiline ||
        widget.inputVO.inputType == ContentInputType.numeric) {
      inputAction =
          widget.inputVO.hasNext ? TextInputAction.next : TextInputAction.done;
    }

    Widget? prefixIcon;
    if (widget.inputVO.prefixIcon != null) {
      prefixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 25.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.grey,
          ));
    }
    Widget? suffixIcon;
    if (widget.inputVO.prefixIcon != null) {
      suffixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 25.0, //72.0,
            fit: BoxFit.contain,
            color: Colors.grey,
          ));
    }

    return TextField(
      style: CommonUtil.textStyle(
          color: Colors.black,
          fontSize: kFontSizeMedium,
          fontWeight: FontWeight.w700),
      maxLines: widget.inputVO.inputType == ContentInputType.multiline ? 4 : 1,
      keyboardType: TextInputType.text,
      controller: _textController,
      textInputAction: inputAction,
      obscureText: false,
      decoration: inputDecoration(prefixIcon, suffixIcon),
      onChanged: (value) {
        // debugPrint("onchange $value");
        widget.inputVO.inputValue = value;
        _debouncer(() {
          if (widget.onSubmitted != null) {
            widget.onSubmitted!(value);
          }
        });
      },
      //onSubmitted: widget.onSubmitted
    );
  }

  InputDecoration inputDecoration(Widget? prefixIcon, Widget? suffixIcon) {
    return InputDecoration(
      filled: true,
      labelText: widget.inputVO.label,
      fillColor: Colors.grey[200],
      focusColor: Colors.white,
      isDense: true,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      labelStyle: CommonUtil.textStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontSize: kFontSizeMedium),
      prefixIcon: prefixIcon,
      // set the prefix icon constraints
      prefixIconConstraints: const BoxConstraints(
        minWidth: 25,
        minHeight: 25,
      ),
      suffixIcon: suffixIcon,
      // set the prefix icon constraints
      suffixIconConstraints: const BoxConstraints(
        minWidth: 25,
        minHeight: 25,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[200]!, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
