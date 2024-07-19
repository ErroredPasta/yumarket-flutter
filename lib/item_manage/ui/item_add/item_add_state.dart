import 'package:yumarket_flutter/item_manage/domain/model/option.dart';
import 'package:yumarket_flutter/item_manage/domain/model/option_group.dart';

class ItemAddState {
  bool available = false;
  List<TempOptionGroup> optionGroups = [];
}

class TempOptionGroup {
  int id;
  String name = '';
  List<TempOption> options = [];
  TempSelectRange selectRange = TempSelectRange();

  TempOptionGroup({required this.id});
}

class TempOption {
  int id;
  String name = '';
  int additionalPrice = 0;

  TempOption({required this.id});
}

class TempSelectRange {
  int start = 1;
  int end = 1;
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
