import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_option_group.dart';

part 'order_item.g.dart';

@JsonSerializable()
class OrderItem {
  final int id;
  final String name;
  final String? imageUrl;
  final int amount;
  final int pricePerItem;
  @JsonKey(name: 'orderOptionGroupDtos')
  final List<OrderOptionGroup> orderOptionGroups;

  OrderItem({
    required this.id,
    required this.name,
    this.imageUrl,
    required this.amount,
    required this.pricePerItem,
    required this.orderOptionGroups,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}
