import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';

abstract class ItemManageEvent extends BaseEvent {
  const ItemManageEvent();
}

class GetItems extends ItemManageEvent {
  final String storeId;

  const GetItems(this.storeId);
}

