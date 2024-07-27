import '../../../core/ui/bloc/base_event.dart';
import '../../domain/model/item.dart';
import '../item_add/item_add_state.dart';

abstract class ItemUpdateEvent extends BaseEvent {
  const ItemUpdateEvent();
}

class ItemUpdateToggleAvailable extends ItemUpdateEvent {
  const ItemUpdateToggleAvailable();
}

class UpdateItem extends ItemUpdateEvent {
  final String storeId;
  final Item item;

  const UpdateItem(this.storeId, this.item);
}

class ItemUpdateAddOptionGroup extends ItemUpdateEvent {
  const ItemUpdateAddOptionGroup();
}

class ItemUpdateDeleteOptionGroup extends ItemUpdateEvent {
  final TempOptionGroup optionGroup;
  const ItemUpdateDeleteOptionGroup(this.optionGroup);
}

class ItemUpdateAddOption extends ItemUpdateEvent {
  final TempOptionGroup optionGroup;
  const ItemUpdateAddOption(this.optionGroup);
}

class ItemUpdateDeleteOption extends ItemUpdateEvent {
  final TempOptionGroup optionGroup;
  final TempOption option;

  const ItemUpdateDeleteOption(this.optionGroup, this.option);
}