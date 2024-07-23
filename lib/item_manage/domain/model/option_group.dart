import 'package:freezed_annotation/freezed_annotation.dart';

import 'option.dart';

part 'option_group.freezed.dart';
part 'option_group.g.dart';

@freezed
class OptionGroup with _$OptionGroup {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory OptionGroup({
    required int id,
    required String name,
    @Default(<Option>[]) List<Option> options,
    required IntRange selectRange,
  }) = _OptionGroup;

  factory OptionGroup.fromJson(Map<String, dynamic> json) => _$OptionGroupFromJson(json);
}

@freezed
class IntRange with _$IntRange {
  const factory IntRange({
    required int start,
    required int end,
  }) = _IntRange;

  factory IntRange.fromJson(Map<String, dynamic> json) => _$IntRangeFromJson(json);
}