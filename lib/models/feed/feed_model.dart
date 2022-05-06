import 'package:fitify_flutter/models/user_model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_model.freezed.dart';
part 'feed_model.g.dart';

@freezed
class FeedModel with _$FeedModel {
  factory FeedModel({
    required User user,
    required String imageAsB64,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
}
