import '../model/order.dart';

abstract class OrderRepository {
  Stream<List<Order>> getOrders();
  Future<void> updateOrder(Order order);
}