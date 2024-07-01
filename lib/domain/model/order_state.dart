import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumarket_flutter/domain/util/case_converter.dart';

enum OrderState { pending, accepted, done, rejected }

class OrderStateConverter extends JsonConverter<OrderState, String> {
  const OrderStateConverter();

  @override
  OrderState fromJson(String json) {
    return OrderState.values.firstWhere(
      (orderState) => orderState.name == screamingSnakeToCamel(json),
    );
  }

  @override
  String toJson(OrderState object) {
    return camelToScreamingSnake(object.name);
  }
}
