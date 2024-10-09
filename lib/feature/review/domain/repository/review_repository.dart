import '../model/review.dart';

abstract class ReviewRepository {
  Stream<List<Review>> getReviews();
}