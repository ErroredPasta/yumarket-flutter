import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/item_manage/domain/model/item.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_bloc.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_event.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_state.dart';
import 'package:yumarket_flutter/item_manage/ui/item_option/component/option_group_list.dart';

import '../item_option/conversion/option_group_conversions.dart';

class ItemAddScreen extends StatefulWidget {
  const ItemAddScreen({super.key});

  @override
  State<ItemAddScreen> createState() => _ItemAddScreenState();
}

class _ItemAddScreenState extends State<ItemAddScreen> {
  final TextEditingController _itemNameController = TextEditingController();

  final TextEditingController _originalPriceController =
      TextEditingController();
  final TextEditingController _discountedPriceController =
      TextEditingController();

  final TextEditingController _stockController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ItemAddBloc bloc = GetIt.I.get();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocListener<ItemAddBloc, UiState<ItemAddState>>(
          bloc: bloc,
          listenWhen: (previous, current) =>
              previous.exception != current.exception ||
              current.data.addDone == true,
          listener: (context, state) {
            if (state.exception != null) {
              final snackBar = SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(state.exception.toString()),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              bloc.exceptionHandled();
            }

            if (state.data.addDone == true) {
              context.pop();
            }
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _itemNameController,
                  decoration: const InputDecoration(
                    labelText: '상품명',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _originalPriceController,
                  decoration: const InputDecoration(
                    labelText: '상품 원가',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _discountedPriceController,
                  decoration: const InputDecoration(
                    labelText: '상품 할인가',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _stockController,
                  decoration: const InputDecoration(
                    labelText: '재고 수량',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                availableCheckBox(bloc),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    labelText: '상품 설명',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                optionGroupList(bloc),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      bloc.addEvent(const AddOptionGroup());
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary),
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    label: const Text('옵션 그룹 추가하기'),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      try {
                        bloc.addEvent(
                          AddItem(createItem(bloc.state.data)),
                        );
                      } on Exception catch (exception) {
                        bloc.exceptionOccurred(exception);
                      }
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                    child: const Text('추가'),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                    ),
                    child: const Text('취소'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget availableCheckBox(ItemAddBloc bloc) {
    return BlocBuilder<ItemAddBloc, UiState<ItemAddState>>(
      bloc: bloc,
      builder: (context, state) {
        final available = state.data.available;

        return InkWell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: available,
                  onChanged: (value) {
                    bloc.addEvent(const ToggleAvailable());
                  },
                ),
                const Text('판매중')
              ],
            ),
          ),
          onTap: () {
            bloc.addEvent(const ToggleAvailable());
          },
        );
      },
    );
  }

  Widget optionGroupList(ItemAddBloc bloc) {
    return BlocBuilder<ItemAddBloc, UiState<ItemAddState>>(
      bloc: bloc,
      builder: (context, state) {
        return OptionGroupList(
          state.data.optionGroups,
          onAddOptionClick: (optionGroup) {
            bloc.addEvent(AddOption(optionGroup));
          },
          onDeleteOptionGroupClick: (optionGroup) {
            bloc.addEvent(DeleteOptionGroup(optionGroup));
          },
          onDeleteOptionClick: (optionGroup, option) {
            bloc.addEvent(DeleteOption(optionGroup, option));
          },
        );
      },
    );
  }

  Item createItem(ItemAddState state) {
    final price = int.tryParse(_originalPriceController.text);
    final discountedPrice = int.tryParse(_discountedPriceController.text);
    final stock = int.tryParse(_stockController.text);

    if (price == null) throw Exception('알맞은 형식의 가격을 입력해주세요.');
    if (discountedPrice == null) throw Exception('알맞은 형식의 할인가를 입력해주세요.');
    if (stock == null) throw Exception('알맞은 형식의 재고량을 입력해주세요.');

    return Item(
        id: 0,
        name: _itemNameController.text,
        description: _descriptionController.text,
        stock: stock,
        price: price,
        discountedPrice: discountedPrice,
        available: state.available,
        optionGroups:
            convertTempOptionGroupsToOptionGroups(state.optionGroups));
  }

  @override
  void dispose() {
    _itemNameController.dispose();
    _originalPriceController.dispose();
    _discountedPriceController.dispose();
    super.dispose();
  }
}
