import 'package:yumarket_flutter/review/domain/model/review.dart';

abstract class ReviewRepository {
  Stream<List<Review>> getReviews(String storeId);
}