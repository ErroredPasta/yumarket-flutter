// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptionGroup _$OptionGroupFromJson(Map<String, dynamic> json) {
  return _OptionGroup.fromJson(json);
}

/// @nodoc
mixin _$OptionGroup {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Option> get options => throw _privateConstructorUsedError;
  IntRange get selectRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionGroupCopyWith<OptionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionGroupCopyWith<$Res> {
  factory $OptionGroupCopyWith(
          OptionGroup value, $Res Function(OptionGroup) then) =
      _$OptionGroupCopyWithImpl<$Res, OptionGroup>;
  @useResult
  $Res call({int id, String name, List<Option> options, IntRange selectRange});

  $IntRangeCopyWith<$Res> get selectRange;
}

/// @nodoc
class _$OptionGroupCopyWithImpl<$Res, $Val extends OptionGroup>
    implements $OptionGroupCopyWith<$Res> {
  _$OptionGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? options = null,
    Object? selectRange = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      selectRange: null == selectRange
          ? _value.selectRange
          : selectRange // ignore: cast_nullable_to_non_nullable
              as IntRange,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntRangeCopyWith<$Res> get selectRange {
    return $IntRangeCopyWith<$Res>(_value.selectRange, (value) {
      return _then(_value.copyWith(selectRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OptionGroupImplCopyWith<$Res>
    implements $OptionGroupCopyWith<$Res> {
  factory _$$OptionGroupImplCopyWith(
          _$OptionGroupImpl value, $Res Function(_$OptionGroupImpl) then) =
      __$$OptionGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<Option> options, IntRange selectRange});

  @override
  $IntRangeCopyWith<$Res> get selectRange;
}

/// @nodoc
class __$$OptionGroupImplCopyWithImpl<$Res>
    extends _$OptionGroupCopyWithImpl<$Res, _$OptionGroupImpl>
    implements _$$OptionGroupImplCopyWith<$Res> {
  __$$OptionGroupImplCopyWithImpl(
      _$OptionGroupImpl _value, $Res Function(_$OptionGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? options = null,
    Object? selectRange = null,
  }) {
    return _then(_$OptionGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      selectRange: null == selectRange
          ? _value.selectRange
          : selectRange // ignore: cast_nullable_to_non_nullable
              as IntRange,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionGroupImpl implements _OptionGroup {
  const _$OptionGroupImpl(
      {required this.id,
      required this.name,
      final List<Option> options = const <Option>[],
      required this.selectRange})
      : _options = options;

  factory _$OptionGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionGroupImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Option> _options;
  @override
  @JsonKey()
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final IntRange selectRange;

  @override
  String toString() {
    return 'OptionGroup(id: $id, name: $name, options: $options, selectRange: $selectRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.selectRange, selectRange) ||
                other.selectRange == selectRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_options), selectRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionGroupImplCopyWith<_$OptionGroupImpl> get copyWith =>
      __$$OptionGroupImplCopyWithImpl<_$OptionGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionGroupImplToJson(
      this,
    );
  }
}

abstract class _OptionGroup implements OptionGroup {
  const factory _OptionGroup(
      {required final int id,
      required final String name,
      final List<Option> options,
      required final IntRange selectRange}) = _$OptionGroupImpl;

  factory _OptionGroup.fromJson(Map<String, dynamic> json) =
      _$OptionGroupImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Option> get options;
  @override
  IntRange get selectRange;
  @override
  @JsonKey(ignore: true)
  _$$OptionGroupImplCopyWith<_$OptionGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntRange _$IntRangeFromJson(Map<String, dynamic> json) {
  return _IntRange.fromJson(json);
}

/// @nodoc
mixin _$IntRange {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntRangeCopyWith<IntRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntRangeCopyWith<$Res> {
  factory $IntRangeCopyWith(IntRange value, $Res Function(IntRange) then) =
      _$IntRangeCopyWithImpl<$Res, IntRange>;
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class _$IntRangeCopyWithImpl<$Res, $Val extends IntRange>
    implements $IntRangeCopyWith<$Res> {
  _$IntRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntRangeImplCopyWith<$Res>
    implements $IntRangeCopyWith<$Res> {
  factory _$$IntRangeImplCopyWith(
          _$IntRangeImpl value, $Res Function(_$IntRangeImpl) then) =
      __$$IntRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class __$$IntRangeImplCopyWithImpl<$Res>
    extends _$IntRangeCopyWithImpl<$Res, _$IntRangeImpl>
    implements _$$IntRangeImplCopyWith<$Res> {
  __$$IntRangeImplCopyWithImpl(
      _$IntRangeImpl _value, $Res Function(_$IntRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$IntRangeImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntRangeImpl implements _IntRange {
  const _$IntRangeImpl({required this.start, required this.end});

  factory _$IntRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntRangeImplFromJson(json);

  @override
  final int start;
  @override
  final int end;

  @override
  String toString() {
    return 'IntRange(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntRangeImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntRangeImplCopyWith<_$IntRangeImpl> get copyWith =>
      __$$IntRangeImplCopyWithImpl<_$IntRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntRangeImplToJson(
      this,
    );
  }
}

abstract class _IntRange implements IntRange {
  const factory _IntRange({required final int start, required final int end}) =
      _$IntRangeImpl;

  factory _IntRange.fromJson(Map<String, dynamic> json) =
      _$IntRangeImpl.fromJson;

  @override
  int get start;
  @override
  int get end;
  @override
  @JsonKey(ignore: true)
  _$$IntRangeImplCopyWith<_$IntRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
