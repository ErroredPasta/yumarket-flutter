import 'package:flutter/material.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/item_add_state.dart';
import 'package:yumarket_flutter/item_manage/ui/item_add/option_list.dart';

class OptionGroupList extends StatelessWidget {
  final List<TempOptionGroup> _optionGroups;
  final void Function(TempOptionGroup optionGroup) onAddOptionClick;
  final void Function(TempOptionGroup optionGroup) onDeleteOptionGroupClick;
  final void Function(TempOptionGroup optionGroup, TempOption option)
      onDeleteOptionClick;

  const OptionGroupList(
    this._optionGroups, {
    required this.onAddOptionClick,
    required this.onDeleteOptionGroupClick,
    required this.onDeleteOptionClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final optionGroup in _optionGroups)
          OptionGroupListItem(
            optionGroup,
            onAddOptionClick: onAddOptionClick,
            onDeleteOptionGroupClick: onDeleteOptionGroupClick,
            onDeleteOptionClick: onDeleteOptionClick,
            key: ObjectKey(optionGroup),
          )
      ],
    );
  }
}

class OptionGroupListItem extends StatelessWidget {
  final TempOptionGroup _optionGroup;
  final void Function(TempOptionGroup optionGroup) onAddOptionClick;
  final void Function(TempOptionGroup optionGroup) onDeleteOptionGroupClick;
  final void Function(TempOptionGroup optionGroup, TempOption option)
      onDeleteOptionClick;

  const OptionGroupListItem(
    this._optionGroup, {
    required this.onAddOptionClick,
    required this.onDeleteOptionGroupClick,
    required this.onDeleteOptionClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              _optionGroup.name = value;
            },
            decoration: const InputDecoration(
              labelText: '옵션 그룹 이름',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    _optionGroup.selectRange.start = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    labelText: '최소 선택수',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              const Text('~'),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    _optionGroup.selectRange.end = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    labelText: '최대 선택수',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          OptionList(
            _optionGroup.options,
            onDeleteOptionClick: (option) { onDeleteOptionClick(_optionGroup, option); },
          ),
          const SizedBox(height: 8.0),
          OutlinedButton.icon(
            onPressed: () {
              onAddOptionClick(_optionGroup);
            },
            label: const Text('옵션 추가하기'),
            icon: const Icon(Icons.add),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Theme.of(context).colorScheme.secondary),
              foregroundColor: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 8.0),
          OutlinedButton.icon(
            onPressed: () {
              onDeleteOptionGroupClick(_optionGroup);
            },
            label: const Text('옵션 그룹 삭제'),
            icon: const Icon(Icons.remove),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Theme.of(context).colorScheme.onSurface),
              foregroundColor: Theme.of(context).colorScheme.onSurface,
            ),
          )
        ],
      ),
    );
  }
}
