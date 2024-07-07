
import '../../../core/ui/bloc/base_event.dart';
import '../domain/model/order.dart';

abstract class OrderEvent extends BaseEvent {
  const OrderEvent();
}

class GetOrders extends OrderEvent {
  final String storeId;

  const GetOrders(this.storeId);
}

class AcceptOrder extends OrderEvent {
  final String storeId;
  final Order order;


  const AcceptOrder(this.storeId, this.order);
}

class RejectOrder extends OrderEvent {
  final String storeId;
  final Order order;

  const RejectOrder(this.storeId, this.order);
}

class DoneOrder extends OrderEvent {
  final String storeId;
  final Order order;

  const DoneOrder(this.storeId, this.order);
}
