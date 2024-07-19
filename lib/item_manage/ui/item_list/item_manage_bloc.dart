import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';

import '../../../core/ui/bloc/ui_state.dart';
import '../../domain/repository/item_repository.dart';
import 'item_manage_event.dart';

@injectable
class ItemManageBloc extends BaseBloc<List<Item>> {
  final ItemRepository _repository;

  ItemManageBloc(this._repository) : super(const UiState(isLoading: true)) {
    on<GetItems>(
      (event, emit) {
        emit.onEach(
          _repository.getItems(event.storeId),
          onData: (data) {
            add(const LoadingDone());
            add(DataReceived(data));
          },
          onError: (error, stackTrace) {
            add(const LoadingDone());
            add(ExceptionOccurred(error as Exception));
          },
        );
      },
    );
  }
}