import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/core/ui/component/main_screen_bottom_navigation.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';
import 'package:yumarket_flutter/item_manage/ui/item_list/item_list.dart';
import '../../../core/ui/bloc/ui_state.dart';
import 'item_manage_bloc.dart';
import 'item_manage_event.dart';

const available = '판매중';
const notAvailable = '판매 중지';

class ItemManageScreen extends StatelessWidget {
  const ItemManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemManageBloc bloc = GetIt.I.get();
    const availabilities = [available, notAvailable];

    bloc.addEvent(const GetItems());

    return DefaultTabController(
      length: availabilities.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('상품 관리'),
          bottom: TabBar(
              tabs: availabilities
                  .map((availability) => Text(availability))
                  .toList()),
        ),
        bottomNavigationBar: const MainScreenBottomNavigation(currentIndex: 2),
        body: BlocConsumer<ItemManageBloc, UiState<List<Item>>>(
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
              for (final availability in availabilities)
                ItemList(
                  state.data
                      .where((item) =>
                          item.available == (availability == available))
                      .toList(),
                )
            ]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { context.push('/items/add'); },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
