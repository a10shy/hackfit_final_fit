// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedModel _$$_FeedModelFromJson(Map<String, dynamic> json) => _$_FeedModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      imageAsB64: json['imageAsB64'] as String,
    );

Map<String, dynamic> _$$_FeedModelToJson(_$_FeedModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'imageAsB64': instance.imageAsB64,
    };
