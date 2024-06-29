import 'package:yumarket_flutter/ui/screen/bloc/base_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumarket_flutter/ui/screen/bloc/ui_state.dart';

abstract class BaseBloc<Data> extends Bloc<BaseEvent, UiState<Data>> {
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
}
