// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UiState<T> {
  bool get isLoading => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UiStateCopyWith<T, UiState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiStateCopyWith<T, $Res> {
  factory $UiStateCopyWith(UiState<T> value, $Res Function(UiState<T>) then) =
      _$UiStateCopyWithImpl<T, $Res, UiState<T>>;
  @useResult
  $Res call({bool isLoading, T data, Exception? exception});
}

/// @nodoc
class _$UiStateCopyWithImpl<T, $Res, $Val extends UiState<T>>
    implements $UiStateCopyWith<T, $Res> {
  _$UiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiStateImplCopyWith<T, $Res>
    implements $UiStateCopyWith<T, $Res> {
  factory _$$UiStateImplCopyWith(
          _$UiStateImpl<T> value, $Res Function(_$UiStateImpl<T>) then) =
      __$$UiStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool isLoading, T data, Exception? exception});
}

/// @nodoc
class __$$UiStateImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateImpl<T>>
    implements _$$UiStateImplCopyWith<T, $Res> {
  __$$UiStateImplCopyWithImpl(
      _$UiStateImpl<T> _value, $Res Function(_$UiStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$UiStateImpl<T>(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$UiStateImpl<T> implements _UiState<T> {
  const _$UiStateImpl(
      {this.isLoading = false, required this.data, this.exception = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final T data;
  @override
  @JsonKey()
  final Exception? exception;

  @override
  String toString() {
    return 'UiState<$T>(isLoading: $isLoading, data: $data, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateImpl<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(data), exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateImplCopyWith<T, _$UiStateImpl<T>> get copyWith =>
      __$$UiStateImplCopyWithImpl<T, _$UiStateImpl<T>>(this, _$identity);
}

abstract class _UiState<T> implements UiState<T> {
  const factory _UiState(
      {final bool isLoading,
      required final T data,
      final Exception? exception}) = _$UiStateImpl<T>;

  @override
  bool get isLoading;
  @override
  T get data;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$UiStateImplCopyWith<T, _$UiStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
