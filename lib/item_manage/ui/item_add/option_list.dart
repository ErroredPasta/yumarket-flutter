import 'package:flutter/material.dart';

import 'item_add_state.dart';

class OptionList extends StatelessWidget {
  final List<TempOption> _options;
  final void Function(TempOption option) onDeleteOptionClick;

  const OptionList(this._options,
      {required this.onDeleteOptionClick, super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final option in _options) OptionListItem(
          option, onDeleteOptionClick: onDeleteOptionClick,
        )
      ],
    );
  }
}

class OptionListItem extends StatelessWidget {
  final TempOption _option;
  final void Function(TempOption option) onDeleteOptionClick;

  const OptionListItem(this._option, {
    required this.onDeleteOptionClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                _option.name = value;
              },
              decoration: const InputDecoration(
                labelText: '옵션 이름',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                _option.additionalPrice = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: '가격',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          IconButton(onPressed: () {
            onDeleteOptionClick(_option);
          }, icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
