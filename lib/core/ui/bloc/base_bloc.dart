import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumarket_flutter/core/ui/bloc/base_event.dart';
import 'package:yumarket_flutter/core/ui/bloc/ui_state.dart';

abstract class BaseBloc<Data, Event extends BaseEvent>
    extends Bloc<BaseEvent, UiState<Data>> {
  BaseBloc(super.initialState) {
    on<Loading>((event, emit) => emit(state.copyWith(isLoading: true)));
    on<LoadingDone>((event, emit) => emit(state.copyWith(isLoading: false)));

    on<DataReceived>((event, emit) => emit(state.copyWith(data: event.data)));

    on<ExceptionOccurred>(
      (event, emit) => emit(state.copyWith(exception: event.exception)),
    );

    on<ExceptionHandled>(
      (event, emit) => emit(state.copyWith(exception: null)),
    );
  }

  void addEvent(Event event) => _checkClosedAndAdd(event);

  void loading() => _checkClosedAndAdd(const Loading());

  void loadingDone() => _checkClosedAndAdd(const LoadingDone());

  void dataReceived(Data data) => _checkClosedAndAdd(DataReceived(data));

  void exceptionOccurred(Exception exception) =>
      _checkClosedAndAdd(ExceptionOccurred(exception));

  void exceptionHandled() => _checkClosedAndAdd(const ExceptionHandled());

  void _checkClosedAndAdd(BaseEvent event) {
    if (isClosed) return;
    add(event);
  }
}
