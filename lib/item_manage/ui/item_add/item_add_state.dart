import 'package:yumarket_flutter/item_manage/domain/model/option.dart';
import 'package:yumarket_flutter/item_manage/domain/model/option_group.dart';

class ItemAddState {
  bool available = false;
  List<TempOptionGroup> optionGroups = [];
}

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

class TempOption {
  int id;
  String name;
  int additionalPrice;

  TempOption({
    required this.id,
    this.name = '',
    this.additionalPrice = 0,
  });
}

class TempSelectRange {
  int start;
  int end;

  TempSelectRange({this.start = 1, this.end = 1});
}

List<OptionGroup> tempOptionGroupsToOptionGroups(
  List<TempOptionGroup> tempOptionGroups,
) {
  final result = tempOptionGroups.map(
    (tempOptionGroup) {
      final options = tempOptionsToOptions(tempOptionGroup.options);
      return OptionGroup(
          id: tempOptionGroup.id,
          name: tempOptionGroup.name,
          selectRange: IntRange(
              start: tempOptionGroup.selectRange.start,
              end: tempOptionGroup.selectRange.end),
          options: options);
    },
  ).toList();

  return result;
}

List<Option> tempOptionsToOptions(List<TempOption> tempOptions) {
  final result = tempOptions.map(
    (tempOption) {
      return Option(
        id: tempOption.id,
        additionalPrice: tempOption.additionalPrice,
        name: tempOption.name,
      );
    },
  ).toList();

  return result;
}
