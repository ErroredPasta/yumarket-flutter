import 'package:injectable/injectable.dart' hide Order;
import 'package:yumarket_flutter/order/domain/repository/order_repository.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/order/ui/order_event.dart';

import '../../core/ui/bloc/base_bloc.dart';
import '../../core/ui/bloc/base_event.dart';
import '../domain/model/order.dart';
import '../domain/model/order_state.dart';

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

    on<AcceptOrder>(
      (event, emit) => _repository.updateOrder(
        event.storeId,
        event.order.copyWith(orderState: OrderState.accepted),
      ),
    );

    on<RejectOrder>(
      (event, emit) => _repository.updateOrder(
        event.storeId,
        event.order.copyWith(orderState: OrderState.rejected),
      ),
    );

    on<DoneOrder>(
      (event, emit) => _repository.updateOrder(
        event.storeId,
        event.order.copyWith(orderState: OrderState.done),
      ),
    );
  }
}
