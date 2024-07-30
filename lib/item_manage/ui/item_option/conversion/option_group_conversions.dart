import '../../../domain/model/option_group.dart';
import '../temp_option_group.dart';
import 'option_conversion.dart';

List<TempOptionGroup> convertOptionGroupToTempOptionGroup(
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
          options: convertOptionToTempOption(optionGroup.options));
    },
  ).toList();

  return result;
}

List<OptionGroup> convertTempOptionGroupsToOptionGroups(
  List<TempOptionGroup> tempOptionGroups,
) {
  final result = tempOptionGroups.map(
    (tempOptionGroup) {
      final options = convertTempOptionsToOptions(tempOptionGroup.options);
      return OptionGroup(
        id: tempOptionGroup.id,
        name: tempOptionGroup.name,
        selectRange: IntRange(
          start: tempOptionGroup.selectRange.start,
          end: tempOptionGroup.selectRange.end,
        ),
        options: options,
      );
    },
  ).toList();

  return result;
}
