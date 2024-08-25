import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/data/util/realtime_database_converter.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';
import 'package:yumarket_flutter/item_manage/domain/repository/item_repository.dart';

@Injectable(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  final String storeId;

  const ItemRepositoryImpl(@Named('storeId') this.storeId);

  @override
  Stream<List<Item>> getItems() {
    final ref = FirebaseDatabase.instance.ref('marketItems/$storeId');

    return ref.onValue.map(
      (event) {
        if (event.snapshot.value == null) {
          throw Exception('Store does not exists');
        }

        final value = event.snapshot.value as List;

        return value
            .map((item) => Item.fromJson(rtdbDataToJson(item)))
            .toList();
      },
    );
  }

  @override
  Future<void> addItem(Item item) async {
    final ref = FirebaseDatabase.instance.ref('marketItems/$storeId');
    final items = await ref.get();
    final newItemId = ((items.value as List).last['id'] as int) + 1;

    await ref.child((newItemId).toString()).set(item.copyWith(id: newItemId).toJson());
  }

  @override
  Future<void> updateItem(Item item) async {
    final ref = FirebaseDatabase.instance.ref('marketItems/$storeId/${item.id}');
    await ref.update(item.toJson());
  }
}
