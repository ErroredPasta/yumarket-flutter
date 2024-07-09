import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/data/util/realtime_database_converter.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';
import 'package:yumarket_flutter/item_manage/domain/repository/item_repository.dart';

@Injectable(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  @override
  Stream<List<Item>> getItems(String storeId) {
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
}
