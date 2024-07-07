import 'package:flutter/material.dart';

import '../domain/model/order_item.dart';

class OrderItemList extends StatelessWidget {
  final List<OrderItem> orderItems;

  const OrderItemList(this.orderItems, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: orderItems
          .map(
            (orderItem) => OrderItemListItem(
              orderItem,
              key: ValueKey(orderItem.id),
            ),
          )
          .toList(),
    );
  }
}

class OrderItemListItem extends StatelessWidget {
  final OrderItem orderItem;

  const OrderItemListItem(this.orderItem, {super.key});

  @override
  Widget build(BuildContext context) {
    // return Text(orderItem.toString());
    return SizedBox(
      height: 95,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            if (orderItem.imageUrl != null)
              SizedBox.fromSize(
                size: const Size.square(75),
                child: Image.network(orderItem.imageUrl!),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(orderItem.name),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                          '${orderItem.amount} x ₩${orderItem.pricePerItem}'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
