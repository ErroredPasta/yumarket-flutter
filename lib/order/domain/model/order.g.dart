// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num).toInt(),
      orderedAt: DateTime.parse(json['orderedAt'] as String),
      orderItems: (json['orderItemDtos'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      orderState:
          const OrderStateConverter().fromJson(json['orderState'] as String),
      deliveryFee: (json['deliveryFee'] as num).toInt(),
      deliveryType: const DeliveryTypeConverter()
          .fromJson(json['deliveryType'] as String),
      telephoneNumber: json['telephoneNumber'] as String,
      request: json['request'] as String,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderedAt': instance.orderedAt.toIso8601String(),
      'orderItemDtos': instance.orderItems,
      'totalPrice': instance.totalPrice,
      'orderState': const OrderStateConverter().toJson(instance.orderState),
      'deliveryFee': instance.deliveryFee,
      'deliveryType':
          const DeliveryTypeConverter().toJson(instance.deliveryType),
      'telephoneNumber': instance.telephoneNumber,
      'request': instance.request,
    };
