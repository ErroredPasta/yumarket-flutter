import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';

import '../item_option/temp_option.dart';
import '../item_option/temp_option_group.dart';

abstract class ItemAddEvent extends BaseEvent {
  const ItemAddEvent();
}

class ToggleAvailable extends ItemAddEvent {
  const ToggleAvailable();
}

class AddItem extends ItemAddEvent {
  final Item item;

  const AddItem(this.item);
}

class AddOptionGroup extends ItemAddEvent {
  const AddOptionGroup();
}

class DeleteOptionGroup extends ItemAddEvent {
  final TempOptionGroup optionGroup;
  const DeleteOptionGroup(this.optionGroup);
}

class AddOption extends ItemAddEvent {
  final TempOptionGroup optionGroup;
  const AddOption(this.optionGroup);
}

class DeleteOption extends ItemAddEvent {
  final TempOptionGroup optionGroup;
  final TempOption option;

  const DeleteOption(this.optionGroup, this.option);
}