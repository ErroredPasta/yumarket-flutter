// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginUiState {
  bool get isAutoSignInChecked => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUiStateCopyWith<LoginUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUiStateCopyWith<$Res> {
  factory $LoginUiStateCopyWith(
          LoginUiState value, $Res Function(LoginUiState) then) =
      _$LoginUiStateCopyWithImpl<$Res, LoginUiState>;
  @useResult
  $Res call({bool isAutoSignInChecked, String? storeId});
}

/// @nodoc
class _$LoginUiStateCopyWithImpl<$Res, $Val extends LoginUiState>
    implements $LoginUiStateCopyWith<$Res> {
  _$LoginUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoSignInChecked = null,
    Object? storeId = freezed,
  }) {
    return _then(_value.copyWith(
      isAutoSignInChecked: null == isAutoSignInChecked
          ? _value.isAutoSignInChecked
          : isAutoSignInChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUiStateImplCopyWith<$Res>
    implements $LoginUiStateCopyWith<$Res> {
  factory _$$LoginUiStateImplCopyWith(
          _$LoginUiStateImpl value, $Res Function(_$LoginUiStateImpl) then) =
      __$$LoginUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAutoSignInChecked, String? storeId});
}

/// @nodoc
class __$$LoginUiStateImplCopyWithImpl<$Res>
    extends _$LoginUiStateCopyWithImpl<$Res, _$LoginUiStateImpl>
    implements _$$LoginUiStateImplCopyWith<$Res> {
  __$$LoginUiStateImplCopyWithImpl(
      _$LoginUiStateImpl _value, $Res Function(_$LoginUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoSignInChecked = null,
    Object? storeId = freezed,
  }) {
    return _then(_$LoginUiStateImpl(
      isAutoSignInChecked: null == isAutoSignInChecked
          ? _value.isAutoSignInChecked
          : isAutoSignInChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginUiStateImpl implements _LoginUiState {
  _$LoginUiStateImpl({required this.isAutoSignInChecked, this.storeId = null});

  @override
  final bool isAutoSignInChecked;
  @override
  @JsonKey()
  final String? storeId;

  @override
  String toString() {
    return 'LoginUiState(isAutoSignInChecked: $isAutoSignInChecked, storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUiStateImpl &&
            (identical(other.isAutoSignInChecked, isAutoSignInChecked) ||
                other.isAutoSignInChecked == isAutoSignInChecked) &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAutoSignInChecked, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUiStateImplCopyWith<_$LoginUiStateImpl> get copyWith =>
      __$$LoginUiStateImplCopyWithImpl<_$LoginUiStateImpl>(this, _$identity);
}

abstract class _LoginUiState implements LoginUiState {
  factory _LoginUiState(
      {required final bool isAutoSignInChecked,
      final String? storeId}) = _$LoginUiStateImpl;

  @override
  bool get isAutoSignInChecked;
  @override
  String? get storeId;
  @override
  @JsonKey(ignore: true)
  _$$LoginUiStateImplCopyWith<_$LoginUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
