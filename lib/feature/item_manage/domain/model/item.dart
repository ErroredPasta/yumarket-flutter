import 'package:freezed_annotation/freezed_annotation.dart';

import 'option_group.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Item({
    required int id,
    required String name,
    required String description,
    required int stock,
    required int price,
    required int discountedPrice,
    @Default(null) String? imageUrl,
    required bool available,
    @Default(<OptionGroup>[]) List<OptionGroup> optionGroups,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
