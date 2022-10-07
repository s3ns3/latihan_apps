import 'package:flutter/material.dart';
import 'package:latihan_apps/transaction.dart';
import 'package:latihan_apps/vo/menu_vo.dart';

class SubMenuScreen extends StatelessWidget {
  final MenuVO menuVO;

  const SubMenuScreen({Key? key, required this.menuVO}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Menu'),
      ),
      body: _displayBody(context),
    );
  } // build

  Widget _displayBody(BuildContext context) {
    List<MenuVO> listMenuVO = menuVO.children;
    return Column(
        children: listMenuVO.map((menuVO) {
      return ListTile(
        dense: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        leading: Container(
          alignment: Alignment.center,
          width: 38,
          child: Icon(
            menuVO.iconData,
            size: 28,
            color: Colors.blue,
          ),
        ),
        title: Text(
          menuVO.labelInd,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      Transaction(menuVO: menuVO)));
        },
      );
    }).toList());
  } //

}
