import 'package:flutter/material.dart';
import 'package:latihan_apps/constant/apps_menu.dart';
import 'package:latihan_apps/submenu_screen.dart';
import 'package:latihan_apps/transaction.dart';
import 'package:latihan_apps/vo/menu_vo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Latihan bloc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<MenuVO> listMenu = AppsMenu.get().listMenu;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: listMenu.map((menu) {
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
                      menu.iconData,
                      size: 28,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    menu.labelInd,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    if (menu.leaf) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Transaction(menuVO: menu)));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SubMenuScreen(menuVO: menu)));
                    }
                  },
                );
              }).toList()),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
