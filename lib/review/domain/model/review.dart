import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../order/domain/model/order.dart';
import 'reply.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  factory Review({
    required int id,
    required String title,
    required String content,
    required int orderId,
    required int rating,
    required int writerId,
    required DateTime writtenAt,
    @Default(null) Reply? reply,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
