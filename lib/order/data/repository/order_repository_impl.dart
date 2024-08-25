import 'package:firebase_database/firebase_database.dart';
import 'package:yumarket_flutter/core/data/util/realtime_database_converter.dart';
import 'package:yumarket_flutter/order/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../domain/model/order.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final String storeId;

  const OrderRepositoryImpl(@Named('storeId') this.storeId);

  @override
  Stream<List<Order>> getOrders() {
    final ref = FirebaseDatabase.instance.ref('orders/$storeId');

    return ref.onValue.map(
      (event) {
        if (event.snapshot.value == null) {
          throw Exception('Store does not exists');
        }

        final value = event.snapshot.value as List;

        return value
            .map((order) => Order.fromJson(rtdbDataToJson(order)))
            .toList();
      },
    );
  }

  @override
  Future<void> updateOrder(Order order) async {
    final ref = FirebaseDatabase.instance.ref('orders/$storeId/${order.id}');
    await ref.update(order.toJson()..remove('orderItemDtos'));
  }
}
