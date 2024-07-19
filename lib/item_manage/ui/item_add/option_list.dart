import 'package:flutter/material.dart';

import 'item_add_state.dart';

class OptionList extends StatelessWidget {
  final List<TempOption> _options;

  const OptionList(this._options, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [for (final option in _options) OptionListItem(option)],
    );
  }
}

class OptionListItem extends StatelessWidget {
  final TempOption _option;

  const OptionListItem(this._option, {super.key});

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
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
