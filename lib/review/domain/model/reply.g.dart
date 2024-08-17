// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyImpl _$$ReplyImplFromJson(Map<String, dynamic> json) => _$ReplyImpl(
      id: (json['id'] as num).toInt(),
      writerName: json['writerName'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      content: json['content'] as String,
      writtenAt: (json['writtenAt'] as num).toInt(),
    );

Map<String, dynamic> _$$ReplyImplToJson(_$ReplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'writerName': instance.writerName,
      'profileImageUrl': instance.profileImageUrl,
      'content': instance.content,
      'writtenAt': instance.writtenAt,
    };
