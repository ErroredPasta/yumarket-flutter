// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptionGroupImpl _$$OptionGroupImplFromJson(Map<String, dynamic> json) =>
    _$OptionGroupImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Option>[],
      selectRange:
          IntRange.fromJson(json['selectRange'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OptionGroupImplToJson(_$OptionGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'selectRange': instance.selectRange.toJson(),
    };

_$IntRangeImpl _$$IntRangeImplFromJson(Map<String, dynamic> json) =>
    _$IntRangeImpl(
      start: (json['start'] as num).toInt(),
      end: (json['end'] as num).toInt(),
    );

Map<String, dynamic> _$$IntRangeImplToJson(_$IntRangeImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
