import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_option_group.g.dart';

@JsonSerializable()
class OrderOptionGroup {
  final int id;

  @JsonKey(name: 'orderOptionDtos')
  final List<OrderOption> orderOptions;

  OrderOptionGroup({
    required this.id,
    required this.orderOptions,
  });

  factory OrderOptionGroup.fromJson(Map<String, dynamic> json) => _$OrderOptionGroupFromJson(json);
  Map<String, dynamic> toJson() => _$OrderOptionGroupToJson(this);
}

@JsonSerializable()
class OrderOption {
  final int id;
  final String name;
  final bool checked;

  OrderOption({
    required this.id,
    required this.name,
    required this.checked,
  });

  factory OrderOption.fromJson(Map<String, dynamic> json) => _$OrderOptionFromJson(json);
  Map<String, dynamic> toJson() => _$OrderOptionToJson(this);
}
