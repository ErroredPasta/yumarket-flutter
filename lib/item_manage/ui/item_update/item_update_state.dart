import '../../domain/model/option.dart';
import '../../domain/model/option_group.dart';
import '../item_add/item_add_state.dart';

class ItemUpdateState {
  bool available;
  List<TempOptionGroup> optionGroups;

  ItemUpdateState({
    required this.available,
    required this.optionGroups,
  });
}

List<TempOptionGroup> optionGroupToTempOptionGroup(
  List<OptionGroup> optionGroups,
) {
  final result = optionGroups.map(
    (optionGroup) {
      return TempOptionGroup(
          id: optionGroup.id,
          name: optionGroup.name,
          selectRange: TempSelectRange(
            start: optionGroup.selectRange.start,
            end: optionGroup.selectRange.end,
          ),
          options: optionToTempOption(optionGroup.options));
    },
  ).toList();

  return result;
}

List<TempOption> optionToTempOption(List<Option> options) {
  final result = options.map(
    (option) {
      return TempOption(
        id: option.id,
        name: option.name,
        additionalPrice: option.additionalPrice,
      );
    },
  ).toList();

  return result;
}
