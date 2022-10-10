import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_apps/bloc/refresh_screen_bloc.dart';
import 'package:latihan_apps/logic/transaction_logic.dart';
import 'package:latihan_apps/vo/content_input_vo.dart';
import 'package:latihan_apps/vo/service_response_vo.dart';
import 'package:latihan_apps/widget/apps_input_v2.dart';

class TransactionNew extends StatefulWidget {

  final int menuType;

  const TransactionNew({Key? key, required this.menuType}) : super(key: key);

  @override
  State createState() => _TransactionNewState();
}

class _TransactionNewState extends State<TransactionNew> {
  // static const ID = '_TransactionNewState';

  final TransactionLogic transactionLogic = TransactionLogic();

  late Future<ServiceResponseVO> future;


  @override
  void initState() {
    super.initState();
    future = transactionLogic.initLogic(widget.menuType);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text('Transaction'),),
            backgroundColor: Colors.white,
            body: Stack(children: <Widget>[
              // _createTitle(context),
              _displayBody(context),
            ])));
  }

  Widget _displayBody(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        padding:const EdgeInsets.only(top: 30.0) ,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
              )
            ]),
        child: FutureBuilder<ServiceResponseVO>(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return _displayContent(context);
            } else {
              return _displayLoading(context);
            }
          },
        )
    );
  } // _displayBody

  Widget _displayLoading(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: const Center(
        child: CircularProgressIndicator()
      )
    );
  }

  Widget _displayContent(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: _displayForm(context),
        ),
      ],
    );
  }

  Widget _displayForm(BuildContext context) {

    final items = <Widget>[];
    for (var vo in transactionLogic.listContentInput) {
      Widget w = _generateInputTypeFor(vo);
      items.add(w);
    }
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
     height: 240.0,
//       child: BlocProvider<RefreshScreenCubit>(
//         create: (context) => RefreshScreenCubit(),
//         child: BlocBuilder<RefreshScreenCubit, bool>(
//           builder: (context, state) {
//             RefreshScreenCubit cubit = BlocProvider.of<RefreshScreenCubit>(context);
//             final items = <Widget>[];
//             for (var vo in transactionLogic.listContentInput) {
//               Widget w = _generateInputTypeFor(vo, cubit);
//               items.add(w);
//             }
//             return ListView(children: items);
//           },
//         )
//       )
//       child: StatefulBuilder(
//         builder: (context, setState) {
//           final items = <Widget>[];
//             for (var vo in transactionLogic.listContentInput) {
//               Widget w = _generateInputTypeFor(vo, setState);
//               items.add(w);
//             }
//             return ListView(children: items);
//         },
//       )
      child: ListView(children: items)
    );
  } // _displayForm

  // Widget _generateInputTypeFor(ContentInputVO contentVO, RefreshScreenCubit cubit) {
  // Widget _generateInputTypeFor(ContentInputVO contentVO, void Function(void Function()) setState) {
  Widget _generateInputTypeFor(ContentInputVO contentVO) {
      if (transactionLogic.needDisplayInput(contentVO)) {
      return AppsInputV2(inputVO: contentVO,
        onSubmitted: (value) {
          // cubit.refreshScreen();
          setState(() {

          });
        },
      );
    } else {
      return Container();
    }
  } // _generateInputTypeFor
}
