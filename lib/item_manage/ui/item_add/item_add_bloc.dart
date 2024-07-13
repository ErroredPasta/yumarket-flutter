import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_event.dart';

import '../../domain/repository/item_repository.dart';
import '../../domain/validator/item_validator.dart';

@injectable
class ItemAddBloc extends BaseBloc<bool> {
  final ItemRepository _repository;
  final ItemValidator _validator;

  ItemAddBloc(this._repository, this._validator) : super(const UiState(data: false)) {
    on<ToggleAvailable>((event, emit) {
      add(DataReceived(!(state.data!)));
    });

    on<AddItem>(_addItem);
  }

  void _addItem(AddItem event, Emitter<UiState<bool>> emit) {
    final item = event.item;

    try {
      _validator.validateItem(item);
      _repository.addItem(event.storeId, item);
    } on Exception catch(exception) {
      add(ExceptionOccurred(exception));
    }
  }
}
