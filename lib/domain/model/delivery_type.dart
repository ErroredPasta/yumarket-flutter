import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumarket_flutter/domain/util/case_converter.dart';

enum DeliveryType { inStore, takeOut, delivery }

class DeliveryTypeConverter extends JsonConverter<DeliveryType, String> {
  const DeliveryTypeConverter();

  @override
  DeliveryType fromJson(String json) {
    return DeliveryType.values.firstWhere(
      (deliveryType) => deliveryType.name == screamingSnakeToCamel(json),
    );
  }

  @override
  String toJson(DeliveryType object) {
    return camelToScreamingSnake(object.name);
  }
}
