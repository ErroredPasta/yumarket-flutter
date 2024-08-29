import '../item_option/temp_option_group.dart';

class ItemUpdateState {
  bool available;
  List<TempOptionGroup> optionGroups;
  bool updateDone;

  ItemUpdateState({
    required this.available,
    required this.optionGroups,
    this.updateDone = false,
  });
}
