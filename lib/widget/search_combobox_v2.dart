import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_apps/bloc/list_searchable_bloc.dart';
import 'package:latihan_apps/constant/apps_constant.dart';
import 'package:latihan_apps/service/apps_menu_service.dart';
import 'package:latihan_apps/util/common_util.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';
import 'package:latihan_apps/vo/selection_vo.dart';

class SearchComboboxV2 extends StatefulWidget {
  final ContentInputVO inputVO;
  final Function(String value)? onSubmitted;

  const SearchComboboxV2({Key? key, required this.inputVO, this.onSubmitted})
      : super(key: key);

  @override
  State createState() => SearchComboboxV2State();
}

class SearchComboboxV2State extends State<SearchComboboxV2> {
  static const id = 'ListSelectionState';

  final _textController = TextEditingController();
  // List<SelectionVO>? listData;
  Timer? _searchDebounce;
  @override
  void initState() {
    super.initState();
    // listData =
    //     AppsMenuService.get().populateListSelection(widget.inputVO.category);
  }

  @override
  void dispose() {
    _textController.dispose();
    _searchDebounce?.cancel();
    _searchDebounce = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // widget.inputVO.textController = _textController;
    _textController.text = widget.inputVO.inputValue;

    Widget? prefixIcon;
    if (widget.inputVO.prefixIcon != null) {
      prefixIcon = Padding(
          padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
          child: Image.asset(
            widget.inputVO.prefixIcon!,
            width: 5.0, //72.0,
            fit: BoxFit.contain,
            color: const Color(0xFF7CC5E1),
          ));
    }
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Row(
                children: [
                  Text(widget.inputVO.label!,
                      style: CommonUtil.textStyle(
                          color: Colors.black,
                          fontSize: fieldFontSmall,
                          fontWeight: FontWeight.w500)),
                ],
              )),
          TextField(
            controller: _textController,
            style: CommonUtil.textStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: fieldFontMedium),
            decoration: InputDecoration(
              filled: true,
              // labelText: widget.inputVO.label!,
              fillColor: Colors.white,
              focusColor: Colors.white,
              isDense: true,
              hintText: 'Pilih ${widget.inputVO.label!}',
              hintStyle: CommonUtil.textStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.normal,
                  fontSize: fieldFontMedium),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
              labelStyle: CommonUtil.textStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.normal,
                  fontSize: fieldFontMedium),
              prefixIcon: prefixIcon,
              // set the prefix icon constraints
              prefixIconConstraints: const BoxConstraints(
                minWidth: 25,
                minHeight: 25,
              ),
              suffixIcon: const Icon(Icons.keyboard_arrow_down),
              // set the prefix icon constraints
              suffixIconConstraints: const BoxConstraints(
                minWidth: 25,
                minHeight: 25,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            readOnly: true,
            onTap: () {
              // widget.inputVO.selections = AppsMenuService()
              //     .populateListSelection(widget.inputVO.category);
              // debugPrint('[$id] tap on selection $listData');
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                  ),
                  isScrollControlled: true,
                  builder: (context) {
                    return _displayListSelection(context, widget.inputVO);
                  });
            },
          )
        ]));
  }

  Widget _displayListSelection(BuildContext context, ContentInputVO inputVO) {
    bool needSearch = (inputVO.selections.length > 10);
    double height = inputVO.selections.length * 60.0; // for items
    height = 55 + height;
    if (needSearch) height = height + 60;
    double maxHeight = MediaQuery.of(context).size.height * 0.9;
    debugPrint('[$id] height $height, maxHeight $maxHeight');
    if (height >= maxHeight) height = maxHeight;
    return BlocProvider<ListSearchableBloc>(
        create: (context) => ListSearchableBloc(items: inputVO.selections),
        child: BlocBuilder<ListSearchableBloc, ListSearchableBlocState>(
          builder: (context, state) {
            List<Widget> widgets = [];
            for (SelectionVO item in state.items) {
              bool selected = (item == inputVO.selectedItem);
              widgets.add(
                  TextButton(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 0.5, color: Colors.grey.withOpacity(0.7)),
                        ),
                        //color: kTelkomselBackgroundWhite
                      ),
                      height: 20.0,
                      alignment: Alignment.centerLeft,
                      child: Text(item.display,
                        style: CommonUtil.textStyle(color: selected?Colors.red:Colors.black, fontSize: kFontSizeSmall),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    onPressed: () {
                      _selectItem(context, item);
                    },
                  )
              );
            }
            // debugPrint('list widget : $widgets');
            return SizedBox(
                height: height,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin:const EdgeInsets.only(top: 20.0,right: 20.0,left: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('List ${widget.inputVO.label}',
                              style: CommonUtil.textStyle(fontSize: kFontSizeLarge,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          InkWell(
                            child: const Icon(Icons.close,
                              color: Colors.black, size: 24.0,),
                            onTap: () => Navigator.pop(context),
                          )
                        ],
                      ),
                    ),
                    needSearch?
                    Container(
                      height: 40.0,
                      margin:const EdgeInsets.only(top: 20.0,right: 15.0,left: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius:  BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(30.0, 7.0, 0.0, 5.0),
                          focusColor: Colors.black,
                          prefixIcon: Icon(Icons.search, size: 20.0,color: Colors.black87,),
                          hintText: 'Cari',
                        ),
                        onChanged: (value) {
                          _searchDebounce?.cancel();
                          _searchDebounce = null;

                          _searchDebounce = Timer(const Duration(milliseconds: 500), () {
                            BlocProvider.of<ListSearchableBloc>(context).add(value);
                          });
                        },
                      ),
                    ):Container(),
                    Expanded(
                        child: ListView.builder(
                          itemCount: widgets.length,
                          itemBuilder: (context, index) => widgets[index],
                        )
                    )
                  ],
                )
            );
          },
        )
    );
  }

  void _selectItem(BuildContext context, SelectionVO item) {
    // if (item != null) {
    //   debugPrint('[$id] selection $item');
    //   widget.inputVO.selectedItem = item;
    // } else {
    //   widget.inputVO.selectedItem = null;
    // }
    debugPrint('[$id] selection $item');
    widget.inputVO.selectedItem = item;
    _textController.text = widget.inputVO.inputValue;
    if (widget.onSubmitted != null) {
      widget.onSubmitted!(widget.inputVO.inputValue);
    }

    Navigator.pop(context);
  }
}
