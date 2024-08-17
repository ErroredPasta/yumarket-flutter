import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/data/util/realtime_database_converter.dart';
import 'package:yumarket_flutter/review/domain/model/review.dart';
import 'package:yumarket_flutter/review/domain/repository/review_repository.dart';

@Injectable(as: ReviewRepository)
class ReviewRepositoryImpl implements ReviewRepository {
  @override
  Stream<List<Review>> getReviews(String storeId) {
    final ref = FirebaseDatabase.instance.ref('/reviews/$storeId');
    return ref.onValue.map(
      (event) {
        if (event.snapshot.value == null) {
          throw Exception('Store does not exists');
        }

        final value = event.snapshot.value as List;

        return value
            .map((review) => Review.fromJson(rtdbDataToJson(review)))
            .toList();
      },
    );
  }
}
