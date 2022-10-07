import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_apps/vo/selection_vo.dart';

class ListSearchableBlocState {
  final List<SelectionVO> items;

  ListSearchableBlocState({required this.items});

  @override
  String toString() {
    return 'ListSearchableBlocState{items: $items}';
  }

}

class ListSearchableBloc extends Bloc<String, ListSearchableBlocState> {

  final List<SelectionVO> items;
  final bool needSort;

  ListSearchableBloc({required this.items, this.needSort = false}) :
        super(ListSearchableBlocState(items: items));

  @override
  Stream<ListSearchableBlocState> mapEventToState(String event) async* {
    List<SelectionVO> filtered = [];
    if (event == '') {
      filtered.addAll(items);
    } else {
      for (SelectionVO i in items) {
        if (i.display.toLowerCase().contains(event.toLowerCase())) {
          filtered.add(i);
        }
      }
    }
    if (needSort) {
      // sort
      filtered.sort((a, b) {
        return a.display.compareTo(b.display);
      });
    }
    yield ListSearchableBlocState(items: filtered);
    return;
  }
}