// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  DateTime get orderedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderItemDtos')
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  @OrderStateConverter()
  OrderState get orderState => throw _privateConstructorUsedError;
  int get deliveryFee =>
      throw _privateConstructorUsedError; // @DeliveryTimeConverter() required (TimeOfDay, TimeOfDay) deliveryTime,
  @DeliveryTypeConverter()
  DeliveryType get deliveryType => throw _privateConstructorUsedError;
  String get telephoneNumber => throw _privateConstructorUsedError;
  String get request => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int id,
      DateTime orderedAt,
      @JsonKey(name: 'orderItemDtos') List<OrderItem> orderItems,
      int totalPrice,
      @OrderStateConverter() OrderState orderState,
      int deliveryFee,
      @DeliveryTypeConverter() DeliveryType deliveryType,
      String telephoneNumber,
      String request});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderedAt = null,
    Object? orderItems = null,
    Object? totalPrice = null,
    Object? orderState = null,
    Object? deliveryFee = null,
    Object? deliveryType = null,
    Object? telephoneNumber = null,
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderedAt: null == orderedAt
          ? _value.orderedAt
          : orderedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      orderState: null == orderState
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as OrderState,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      telephoneNumber: null == telephoneNumber
          ? _value.telephoneNumber
          : telephoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime orderedAt,
      @JsonKey(name: 'orderItemDtos') List<OrderItem> orderItems,
      int totalPrice,
      @OrderStateConverter() OrderState orderState,
      int deliveryFee,
      @DeliveryTypeConverter() DeliveryType deliveryType,
      String telephoneNumber,
      String request});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderedAt = null,
    Object? orderItems = null,
    Object? totalPrice = null,
    Object? orderState = null,
    Object? deliveryFee = null,
    Object? deliveryType = null,
    Object? telephoneNumber = null,
    Object? request = null,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderedAt: null == orderedAt
          ? _value.orderedAt
          : orderedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      orderState: null == orderState
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as OrderState,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      telephoneNumber: null == telephoneNumber
          ? _value.telephoneNumber
          : telephoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.id,
      required this.orderedAt,
      @JsonKey(name: 'orderItemDtos') required final List<OrderItem> orderItems,
      required this.totalPrice,
      @OrderStateConverter() required this.orderState,
      required this.deliveryFee,
      @DeliveryTypeConverter() required this.deliveryType,
      required this.telephoneNumber,
      required this.request})
      : _orderItems = orderItems;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime orderedAt;
  final List<OrderItem> _orderItems;
  @override
  @JsonKey(name: 'orderItemDtos')
  List<OrderItem> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  final int totalPrice;
  @override
  @OrderStateConverter()
  final OrderState orderState;
  @override
  final int deliveryFee;
// @DeliveryTimeConverter() required (TimeOfDay, TimeOfDay) deliveryTime,
  @override
  @DeliveryTypeConverter()
  final DeliveryType deliveryType;
  @override
  final String telephoneNumber;
  @override
  final String request;

  @override
  String toString() {
    return 'Order(id: $id, orderedAt: $orderedAt, orderItems: $orderItems, totalPrice: $totalPrice, orderState: $orderState, deliveryFee: $deliveryFee, deliveryType: $deliveryType, telephoneNumber: $telephoneNumber, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderedAt, orderedAt) ||
                other.orderedAt == orderedAt) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.orderState, orderState) ||
                other.orderState == orderState) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.telephoneNumber, telephoneNumber) ||
                other.telephoneNumber == telephoneNumber) &&
            (identical(other.request, request) || other.request == request));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderedAt,
      const DeepCollectionEquality().hash(_orderItems),
      totalPrice,
      orderState,
      deliveryFee,
      deliveryType,
      telephoneNumber,
      request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final int id,
      required final DateTime orderedAt,
      @JsonKey(name: 'orderItemDtos') required final List<OrderItem> orderItems,
      required final int totalPrice,
      @OrderStateConverter() required final OrderState orderState,
      required final int deliveryFee,
      @DeliveryTypeConverter() required final DeliveryType deliveryType,
      required final String telephoneNumber,
      required final String request}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get orderedAt;
  @override
  @JsonKey(name: 'orderItemDtos')
  List<OrderItem> get orderItems;
  @override
  int get totalPrice;
  @override
  @OrderStateConverter()
  OrderState get orderState;
  @override
  int get deliveryFee;
  @override // @DeliveryTimeConverter() required (TimeOfDay, TimeOfDay) deliveryTime,
  @DeliveryTypeConverter()
  DeliveryType get deliveryType;
  @override
  String get telephoneNumber;
  @override
  String get request;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
