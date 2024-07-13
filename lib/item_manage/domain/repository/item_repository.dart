import 'package:yumarket_flutter/item_manage/domain/model/item.dart';

abstract class ItemRepository {
  Stream<List<Item>> getItems(String storeId);
  Future<void> addItem(String storeId, Item item);
}