import 'package:firebase_database/firebase_database.dart';
import 'package:yumarket_flutter/data/util/realtime_database_converter.dart';
import 'package:yumarket_flutter/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../domain/model/order.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  @override
  Stream<List<Order>> getOrders(String storeId) {
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
}
