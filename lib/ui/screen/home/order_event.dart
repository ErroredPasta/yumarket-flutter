import 'package:yumarket_flutter/ui/screen/bloc/base_event.dart';

abstract class OrderEvent extends BaseEvent {
  const OrderEvent();
}

class GetOrders extends OrderEvent {
  final String storeId;

  const GetOrders(this.storeId);
}
