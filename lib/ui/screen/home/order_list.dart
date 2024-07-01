import 'package:flutter/material.dart';
import 'package:yumarket_flutter/domain/model/delivery_type.dart';
import 'package:yumarket_flutter/ui/screen/home/order_item_list.dart';

import '../../../domain/model/order.dart';

class OrderList extends StatelessWidget {
  final List<Order> orders;

  const OrderList(this.orders, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => OrderListItem(
        orders[index],
        key: ValueKey(orders[index].id),
      ),
      itemCount: orders.length,
    );
  }
}

class OrderListItem extends StatelessWidget {
  final Order order;

  const OrderListItem(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderItemList(order.orderItems),
          Text('주문 번호 : ${order.id}'),
          Text('이용 방법 : ${_deliveryTypeToString(order.deliveryType)}'),
          Text('주문 일시 : ${order.orderedAt}'),
          Text('주문자 : ${order.telephoneNumber}'),
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.errorContainer,
            child: Text(
              '요청 사항 : ${order.request}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
            ),
          )
        ],
      ),
    );
  }

  String _deliveryTypeToString(DeliveryType type) => switch (type) {
        DeliveryType.inStore => '매장 이용',
        DeliveryType.takeOut => '테이크 아웃',
        DeliveryType.delivery => '배달',
      };
}
