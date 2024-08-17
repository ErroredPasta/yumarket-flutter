// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      orderId: (json['orderId'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      writerId: (json['writerId'] as num).toInt(),
      writtenAt: DateTime.parse(json['writtenAt'] as String),
      reply: json['reply'] == null
          ? null
          : Reply.fromJson(json['reply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'orderId': instance.orderId,
      'rating': instance.rating,
      'writerId': instance.writerId,
      'writtenAt': instance.writtenAt.toIso8601String(),
      'reply': instance.reply,
    };
