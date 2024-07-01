import 'package:injectable/injectable.dart' hide Order;
import 'package:yumarket_flutter/domain/repository/order_repository.dart';
import 'package:yumarket_flutter/ui/screen/bloc/base_bloc.dart';
import 'package:yumarket_flutter/ui/screen/bloc/base_event.dart';
import 'package:yumarket_flutter/ui/screen/bloc/ui_state.dart';

import '../../../domain/model/order.dart';
import 'order_event.dart';

@injectable
class OrderBloc extends BaseBloc<List<Order>> {
  final OrderRepository _repository;

  OrderBloc(this._repository) : super(const UiState(isLoading: true)) {
    on<GetOrders>(
      (event, emit) => emit.onEach(
        _repository.getOrders(event.storeId),
        onData: (data) {
          add(const LoadingDone());
          add(DataReceived(data));
        },
        onError: (error, stackTrace) {
          add(const LoadingDone());
          add(ExceptionOccurred(error as Exception));
        },
      ),
    );
  }
}
