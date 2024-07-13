import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';

abstract class ItemAddEvent extends BaseEvent {
  const ItemAddEvent();
}

class ToggleAvailable extends ItemAddEvent {
  const ToggleAvailable();
}

class AddItem extends ItemAddEvent {
  final String storeId;
  final Item item;

  const AddItem(this.storeId, this.item);
}