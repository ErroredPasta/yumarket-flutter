import '../../../core/ui/bloc/base_event.dart';
import '../domain/model/order.dart';

abstract class OrderEvent extends BaseEvent {
  const OrderEvent();
}

class GetOrders extends OrderEvent {
  const GetOrders();
}

class AcceptOrder extends OrderEvent {
  final Order order;

  const AcceptOrder(this.order);
}

class RejectOrder extends OrderEvent {
  final Order order;

  const RejectOrder(this.order);
}

class DoneOrder extends OrderEvent {
  final Order order;

  const DoneOrder(this.order);
}
