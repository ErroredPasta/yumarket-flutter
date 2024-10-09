import '../model/item.dart';

abstract class ItemRepository {
  Stream<List<Item>> getItems();
  Future<void> addItem(Item item);
  Future<void> updateItem(Item item);
}