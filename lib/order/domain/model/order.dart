import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'delivery_type.dart';
import 'order_item.dart';
import 'order_state.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required int id,
    required DateTime orderedAt,
    @JsonKey(name: 'orderItemDtos') // ignore: invalid_annotation_target
    required List<OrderItem> orderItems,
    required int totalPrice,
    @OrderStateConverter() required OrderState orderState,
    required int deliveryFee,
    // @DeliveryTimeConverter() required (TimeOfDay, TimeOfDay) deliveryTime,
    @DeliveryTypeConverter() required DeliveryType deliveryType,
    required String telephoneNumber,
    required String request,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

class DeliveryTimeConverter
    extends JsonConverter<(TimeOfDay, TimeOfDay), String> {
  const DeliveryTimeConverter();

  @override
  (TimeOfDay, TimeOfDay) fromJson(String json) {
    final [startTime, endTime] = json.split('-');
    return (stringToTimeOfDay(startTime), stringToTimeOfDay(endTime));
  }

  @override
  String toJson((TimeOfDay, TimeOfDay) object) {
    final (startTime, endTime) = object;
    return '$startTime-$endTime';
  }

  TimeOfDay stringToTimeOfDay(String timeString) {
    final timePattern = RegExp(r'TimeOfDay\((\d{2}):(\d{2})\)');
    final match = timePattern.firstMatch(timeString);

    if (match != null && match.groupCount == 2) {
      final hour = int.parse(match.group(1)!);
      final minute = int.parse(match.group(2)!);

      return TimeOfDay(hour: hour, minute: minute);
    } else {
      throw const FormatException("Invalid time format");
    }
  }
}
