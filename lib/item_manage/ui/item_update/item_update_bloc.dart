import 'dart:async';

import 'package:bloc/src/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_event.dart';

import '../../../core/ui/bloc/ui_state.dart';
import '../../domain/repository/item_repository.dart';
import '../../domain/validator/item_validator.dart';
import '../item_add/item_add_state.dart';
import 'item_update_state.dart';

@injectable
class ItemUpdateBloc extends BaseBloc<ItemUpdateState> {
  final ItemRepository _repository;
  final ItemValidator _validator;

  ItemUpdateBloc(
    this._repository,
    this._validator,
    @factoryParam ItemUpdateState itemUpdateState,
  ) : super(UiState(data: itemUpdateState)) {
    on<ItemUpdateToggleAvailable>((event, emit) {
      final newState = ItemUpdateState(
        available: !state.data!.available,
        optionGroups: state.data!.optionGroups,
      );

      add(DataReceived(newState));
    });

    on<UpdateItem>(_updateItem);

    on<ItemUpdateAddOptionGroup>(_addOptionGroup);

    on<ItemUpdateDeleteOptionGroup>(_deleteOptionGroup);

    on<ItemUpdateAddOption>(_addOption);

    on<ItemUpdateDeleteOption>(_deleteOption);
  }

  void _updateItem(UpdateItem event, Emitter<UiState<ItemUpdateState>> emit) {
    final UpdateItem(:storeId, :item) = event;

    try {
      _validator.validateItem(item);
      _repository.updateItem(storeId, item);
    } on Exception catch (exception) {
      add(ExceptionOccurred(exception));
    }
  }

  void _addOptionGroup(
    ItemUpdateAddOptionGroup event,
    Emitter<UiState<ItemUpdateState>> emit,
  ) {
    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups)
          ..add(
            TempOptionGroup(
              id: (state.data!.optionGroups.lastOrNull?.id ?? 0) + 1,
            ),
          );

    add(DataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    )));
  }

  void _deleteOptionGroup(
    ItemUpdateDeleteOptionGroup event,
    Emitter<UiState<ItemUpdateState>> emit,
  ) {
    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups)
          ..removeWhere(
            (element) => element.id == event.optionGroup.id,
          );

    add(DataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    )));
  }

  void _addOption(
    ItemUpdateAddOption event,
    Emitter<UiState<ItemUpdateState>> emit,
  ) {
    event.optionGroup.options.add(
      TempOption(
        id: (event.optionGroup.options.lastOrNull?.id ?? 0) + 1,
      ),
    );

    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups);

    add(DataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    )));
  }

  void _deleteOption(
    ItemUpdateDeleteOption event,
    Emitter<UiState<ItemUpdateState>> emit,
  ) {
    event.optionGroup.options.removeWhere(
      (element) => element.id == event.option.id,
    );

    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups);

    add(DataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    )));
  }
}
