import '../model/order.dart';

abstract class OrderRepository {
  Stream<List<Order>> getOrders(String storeId);
  Future<void> updateOrder(String storeId, Order order);
}