import 'package:injectable/injectable.dart';

import '../model/item.dart';

@injectable
class ItemValidator {
  void validateItem(Item item) {
    if (item.name.isEmpty) throw Exception('상품의 이름을 입력해주세요.');

    if (item.price <= 0) throw Exception('상품의 가격을 올바르게 입력해주세요.');
    if (item.discountedPrice <= 0) throw Exception('상품의 할인가를 올바르게 입력해주세요.');
    if (item.stock < 0) throw Exception('상품의 재고 수량을 올바르게 입력해주세요.');

    if (item.discountedPrice > item.price) throw Exception('상품의 할인가가 원가보다 작게 입력해주세요.');
  }
}