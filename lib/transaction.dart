import 'package:flutter/material.dart';
import 'package:latihan_apps/service/apps_menu_service.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';
import 'package:latihan_apps/vo/menu_vo.dart';
import 'package:latihan_apps/widget/apps_input_v2.dart';

class Transaction extends StatefulWidget {
  final MenuVO menuVO;

  Transaction({Key? key, required this.menuVO}) : super(key: key);

  State createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  static const ID = '_TransactionScreenState';

  late List<ContentInputVO> listContent;
  @override
  void initState() {
    super.initState();
    listContent = AppsMenuService.get().getListContent(widget.menuVO.type);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text('Transaction'),),
            backgroundColor: Colors.white,
            body: Stack(children: <Widget>[
              // _createTitle(context),
              _displayBody(context),
            ])));
  }

  Widget _displayBody(BuildContext context) {
    return Container(
        margin:
            EdgeInsets.all(10.0),
        padding:EdgeInsets.only(top: 30.0) ,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
              )
            ]),
        child: Column(
          children: <Widget>[
            Expanded(
              child: _displayForm(context),
            ),
          ],
        ));
  } // _displayBody

  Widget _displayForm(BuildContext context) {
    var items = <Widget>[];
    for (var vo in listContent) {
      Widget w = _generateInputTypeFor(vo);
      items.add(w);
    }

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
//      height: 240.0,
      child: ListView(children: items),
    );
  } // _displayForm

  Widget _generateInputTypeFor(ContentInputVO contentVO) {
    return AppsInputV2(inputVO: contentVO,
      onSubmitted: (value) {
        setState(() {
          // just refresh screen
        });
      },
    );
  } // _generateInputTypeFor
}
