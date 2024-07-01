import '../model/order.dart';

abstract class OrderRepository {
  Stream<List<Order>> getOrders(String storeId);
}