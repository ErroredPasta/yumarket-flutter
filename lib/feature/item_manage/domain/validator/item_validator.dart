import 'package:injectable/injectable.dart';

import '../model/item.dart';
import '../model/option.dart';
import '../model/option_group.dart';

@injectable
class ItemValidator {
  void validateItem(Item item) {
    if (item.name.isEmpty) throw Exception('상품의 이름을 입력해주세요.');

    if (item.price <= 0) throw Exception('상품의 가격을 올바르게 입력해주세요.');
    if (item.discountedPrice <= 0) throw Exception('상품의 할인가를 올바르게 입력해주세요.');
    if (item.stock < 0) throw Exception('상품의 재고 수량을 올바르게 입력해주세요.');

    if (item.discountedPrice > item.price) {
      throw Exception('상품의 할인가가 원가보다 작게 입력해주세요.');
    }

    _validateOptionGroups(item.optionGroups);
  }

  void _validateOptionGroups(List<OptionGroup> optionGroups) {
    for (final optionGroup in optionGroups) {
      if (optionGroup.name.isEmpty) throw Exception('옵션 그룹의 이름을 모두 입력해주세요.');

      if (optionGroup.selectRange.start > optionGroup.selectRange.end) {
        throw Exception('${optionGroup.name}의 선택 범위를 올바르게 입력해주세요.');
      }

      if (optionGroup.selectRange.start > optionGroup.options.length) {
        throw Exception('${optionGroup.name}의 옵션 갯수가 최소 선택보다 적습니다.');
      }

      _validateOptions(optionGroup.options, optionGroup.name);
    }
  }

  void _validateOptions(List<Option> options, String optionGroupName) {
    for (final option in options) {
      if (option.name.isEmpty) throw Exception('$optionGroupName의 옵션 이름을 모두 입력해주세요.');
      if (option.additionalPrice < 0) throw Exception('${option.name}의 추가 가격을 올바르게 입력해주세요.');
    }
  }
}