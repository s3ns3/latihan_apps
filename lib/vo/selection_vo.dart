class SelectionVO {
  final int id;
  final int parentId;
  final int category;
  final String display;
  final String valueSms;
  final String valueUssd;

  SelectionVO({this.id = 0,
    this.parentId = 0,
    this.category = 0,
    required this.display,
    this.valueSms = '',
    this.valueUssd = ''
  });

  @override
  String toString() {
    return 'SelectionVO{id: $id, '
        'parentId: $parentId, '
        'category: $category, '
        'display: $display, '
        'valueSms: $valueSms, '
        'valueUssd: $valueUssd'
        '}';
  }

}