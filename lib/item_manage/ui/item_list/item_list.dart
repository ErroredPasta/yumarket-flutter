import 'package:flutter/material.dart';

import '../../domain/model/item.dart';

class ItemList extends StatelessWidget {
  final List<Item> items;

  const ItemList(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [for (final item in items) ItemListItem(item)],
    );
  }
}

class ItemListItem extends StatelessWidget {
  final Item item;

  const ItemListItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (item.imageUrl != null)
            SizedBox.fromSize(
              size: const Size.square(75),
              child: Image.network(item.imageUrl!),
            ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  item.description,
                  style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 3,
                ),
                Text('₩${item.price}')
              ],
            ),
          )
        ],
      ),
    );
  }
}
