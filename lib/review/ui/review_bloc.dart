import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/review/domain/model/review.dart';
import 'package:yumarket_flutter/review/domain/repository/review_repository.dart';
import 'package:yumarket_flutter/review/ui/review_event.dart';

@injectable
class ReviewBloc extends BaseBloc<List<Review>, ReviewEvent> {
  final ReviewRepository _repository;

  ReviewBloc(this._repository) : super(const UiState()) {
    on<GetReviews>(_getReviews);
  }

  void _getReviews(GetReviews event, Emitter<UiState<List<Review>>> emit) {
    emit.onEach(
      _repository.getReviews(event.storeId),
      onData: (data) {
        loadingDone();
        dataReceived(data);
      },
      onError: (error, stackTrace) {
        loadingDone();
        exceptionOccurred(error as Exception);
      },
    );
  }
}
