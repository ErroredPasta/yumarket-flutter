import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';
import 'package:yumarket_flutter/feature/review/ui/review_event.dart';

import '../domain/model/review.dart';
import '../domain/repository/review_repository.dart';

@injectable
class ReviewBloc extends BaseBloc<List<Review>, ReviewEvent> {
  final ReviewRepository _repository;

  ReviewBloc(
    this._repository,
  ) : super(const UiState(isLoading: true, data: [])) {
    on<GetReviews>(_getReviews);
  }

  void _getReviews(GetReviews event, Emitter<UiState<List<Review>>> emit) {
    emit.onEach(
      _repository.getReviews(),
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
