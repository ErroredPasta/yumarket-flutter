import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_event.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_state.dart';

import '../../domain/repository/item_repository.dart';
import '../../domain/validator/item_validator.dart';

@injectable
class ItemAddBloc extends BaseBloc<ItemAddState> {
  final ItemRepository _repository;
  final ItemValidator _validator;

  ItemAddBloc(
    this._repository,
    this._validator,
  ) : super(UiState(data: ItemAddState())) {
    on<ToggleAvailable>((event, emit) {
      final newState = ItemAddState()
        ..optionGroups = state.data!.optionGroups
        ..available = !state.data!.available;

      add(DataReceived(newState));
    });

    on<AddItem>(_addItem);

    on<AddOptionGroup>(_addOptionGroup);

    on<DeleteOptionGroup>(_deleteOptionGroup);

    on<AddOption>(_addOption);

    on<DeleteOption>(_deleteOption);
  }

  void _addItem(AddItem event, Emitter<UiState<ItemAddState>> emit) {
    final item = event.item;

    try {
      _validator.validateItem(item);
      _repository.addItem(event.storeId, item);
    } on Exception catch (exception) {
      add(ExceptionOccurred(exception));
    }
  }

  void _addOptionGroup(
    AddOptionGroup event,
    Emitter<UiState<ItemAddState>> emit,
  ) {
    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups)
          ..add(
            TempOptionGroup(
              id: -(state.data!.optionGroups.length),
            ),
          );

    add(DataReceived(ItemAddState()..optionGroups = newOptionGroups));
  }

  void _deleteOptionGroup(
    DeleteOptionGroup event,
    Emitter<UiState<ItemAddState>> emit,
  ) {
    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups)
          ..removeWhere(
            (element) => element.id == event.optionGroup.id,
          );

    add(DataReceived(ItemAddState()..optionGroups = newOptionGroups));
  }

  void _addOption(
    AddOption event,
    Emitter<UiState<ItemAddState>> emit,
  ) {
    event.optionGroup.options.add(
      TempOption(
        id: -(event.optionGroup.options.length),
      ),
    );

    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups);

    add(DataReceived(ItemAddState()..optionGroups = newOptionGroups));
  }

  void _deleteOption(
    DeleteOption event,
    Emitter<UiState<ItemAddState>> emit,
  ) {
    event.optionGroup.options.removeWhere(
      (element) => element.id == event.option.id,
    );

    final List<TempOptionGroup> newOptionGroups =
        List.from(state.data!.optionGroups);

    add(DataReceived(ItemAddState()..optionGroups = newOptionGroups));
  }
}