import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';

abstract class ReviewEvent extends BaseEvent {
  const ReviewEvent();
}

class GetReviews extends ReviewEvent {
  const GetReviews();
}