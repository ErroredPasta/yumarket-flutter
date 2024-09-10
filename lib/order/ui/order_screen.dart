import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/core/ui/component/main_screen_bottom_navigation.dart';
import 'package:yumarket_flutter/order/ui/order_bloc.dart';

import '../domain/model/order.dart';
import '../domain/model/order_state.dart';
import 'order_event.dart';
import 'order_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = GetIt.I.get<OrderBloc>();

    bloc.addEvent(const GetOrders());

    return DefaultTabController(
      length: OrderState.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('주문 목록'),
          bottom: TabBar(
            tabs: OrderState.values
                .map(
                  (orderState) => Tab(text: _orderStateToString(orderState)),
                )
                .toList(),
          ),
        ),
        bottomNavigationBar: const MainScreenBottomNavigation(currentIndex: 0),
        body: BlocConsumer<OrderBloc, UiState<List<Order>>>(
          bloc: bloc,
          listenWhen: (previous, current) =>
              previous.exception != current.exception,
          listener: (context, state) {
            if (state.exception != null) {
              final snackBar = SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(state.exception.toString()),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              bloc.exceptionHandled();
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return TabBarView(children: [
              for (final orderState in OrderState.values)
                OrderList(
                  state.data
                      .where((order) => order.orderState == orderState)
                      .toList(),
                  onAcceptClick: (order) => bloc.addEvent(AcceptOrder(order)),
                  onRejectClick: (order) => bloc.addEvent(RejectOrder(order)),
                  onDeliveryDoneClick: (order) =>
                      bloc.addEvent(DoneOrder(order)),
                )
            ]);
          },
        ),
      ),
    );
  }

  String _orderStateToString(OrderState state) => switch (state) {
        OrderState.pending => '대기중',
        OrderState.accepted => '접수',
        OrderState.done => '완료',
        OrderState.rejected => '취소',
      };
}
