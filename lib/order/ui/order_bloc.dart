import 'package:injectable/injectable.dart' hide Order;
import 'package:yumarket_flutter/order/domain/repository/order_repository.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/order/ui/order_event.dart';

import '../../core/ui/bloc/base_bloc.dart';
import '../domain/model/order.dart';
import '../domain/model/order_state.dart';

@injectable
class OrderBloc extends BaseBloc<List<Order>, OrderEvent> {
  final OrderRepository _repository;

  OrderBloc(
    this._repository,
  ) : super(const UiState(isLoading: true, data: [])) {
    on<GetOrders>(
      (event, emit) => emit.onEach(
        _repository.getOrders(),
        onData: (data) {
          loadingDone();
          dataReceived(data);
        },
        onError: (error, stackTrace) {
          loadingDone();
          exceptionOccurred(error as Exception);
        },
      ),
    );

    on<AcceptOrder>(
      (event, emit) => _repository.updateOrder(
        event.order.copyWith(orderState: OrderState.accepted),
      ),
    );

    on<RejectOrder>(
      (event, emit) => _repository.updateOrder(
        event.order.copyWith(orderState: OrderState.rejected),
      ),
    );

    on<DoneOrder>(
      (event, emit) => _repository.updateOrder(
        event.order.copyWith(orderState: OrderState.done),
      ),
    );
  }
}
