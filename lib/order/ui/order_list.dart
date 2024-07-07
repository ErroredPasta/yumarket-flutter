import 'package:flutter/material.dart';
import 'package:yumarket_flutter/order/domain/model/delivery_type.dart';

import '../domain/model/order.dart';
import '../domain/model/order_state.dart';
import 'order_item_list.dart';

class OrderList extends StatelessWidget {
  final List<Order> orders;
  final Function(Order order) onAcceptClick;
  final Function(Order order) onRejectClick;
  final Function(Order order) onDeliveryDoneClick;

  const OrderList(
    this.orders, {
    super.key,
    required this.onAcceptClick,
    required this.onRejectClick,
    required this.onDeliveryDoneClick,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => OrderListItem(
        orders[index],
        key: ValueKey(orders[index].id),
        onAcceptClick: onAcceptClick,
        onRejectClick: onRejectClick,
        onDeliveryDoneClick: onDeliveryDoneClick,
      ),
      itemCount: orders.length,
    );
  }
}

class OrderListItem extends StatelessWidget {
  final Order order;
  final Function(Order order) onAcceptClick;
  final Function(Order order) onRejectClick;
  final Function(Order order) onDeliveryDoneClick;

  const OrderListItem(
    this.order, {
    super.key,
    required this.onAcceptClick,
    required this.onRejectClick,
    required this.onDeliveryDoneClick,
  });

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
          ),
          const SizedBox(height: 16),
          if (order.orderState == OrderState.pending)
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () => onAcceptClick(order),
                    style: FilledButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary),
                    child: const Text('주문 접수'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: () => onRejectClick(order),
                    style: FilledButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.outline),
                    child: const Text('주문 거절'),
                  ),
                )
              ],
            ),
          if (order.orderState == OrderState.accepted)
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => onDeliveryDoneClick(order),
                style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary),
                child: const Text('배달 완료'),
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
