import 'package:yumarket_flutter/item_manage/ui/item_option/temp_option.dart';

class TempOptionGroup {
  int id;
  String name;
  List<TempOption> options = [];
  TempSelectRange selectRange = TempSelectRange();

  TempOptionGroup({
    required this.id,
    this.name = '',
    List<TempOption>? options,
    TempSelectRange? selectRange,
  }) {
    if (options != null) this.options = options;
    if (selectRange != null) this.selectRange = selectRange;
  }
}

class TempSelectRange {
  int start;
  int end;

  TempSelectRange({this.start = 1, this.end = 1});
}
