import 'package:bloc/src/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/item_manage/ui/item_update/item_update_event.dart';

import '../../../core/ui/bloc/ui_state.dart';
import '../../domain/repository/item_repository.dart';
import '../../domain/validator/item_validator.dart';
import '../item_option/temp_option.dart';
import '../item_option/temp_option_group.dart';
import 'item_update_state.dart';

@injectable
class ItemUpdateBloc extends BaseBloc<ItemUpdateState, ItemUpdateEvent> {
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

      dataReceived(newState);
    });

    on<UpdateItem>(_updateItem);

    on<ItemUpdateAddOptionGroup>(_addOptionGroup);

    on<ItemUpdateDeleteOptionGroup>(_deleteOptionGroup);

    on<ItemUpdateAddOption>(_addOption);

    on<ItemUpdateDeleteOption>(_deleteOption);
  }

  void _updateItem(UpdateItem event, Emitter<UiState<ItemUpdateState>> emit) async {
    try {
      _validator.validateItem(event.item);
      await _repository.updateItem(event.item);

      dataReceived(ItemUpdateState(
        available: state.data!.available,
        optionGroups: state.data!.optionGroups,
        updateDone: true
      ));
    } on Exception catch (exception) {
      exceptionOccurred(exception);
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

    dataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    ));
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

    dataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    ));
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

    dataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    ));
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

    dataReceived(ItemUpdateState(
      available: state.data!.available,
      optionGroups: newOptionGroups,
    ));
  }
}
