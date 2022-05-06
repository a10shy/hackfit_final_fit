// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) {
  return _FeedModel.fromJson(json);
}

/// @nodoc
mixin _$FeedModel {
  User get user => throw _privateConstructorUsedError;
  String get imageAsB64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedModelCopyWith<FeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedModelCopyWith<$Res> {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) then) =
      _$FeedModelCopyWithImpl<$Res>;
  $Res call({User user, String imageAsB64});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$FeedModelCopyWithImpl<$Res> implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._value, this._then);

  final FeedModel _value;
  // ignore: unused_field
  final $Res Function(FeedModel) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? imageAsB64 = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      imageAsB64: imageAsB64 == freezed
          ? _value.imageAsB64
          : imageAsB64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$FeedModelCopyWith<$Res> implements $FeedModelCopyWith<$Res> {
  factory _$FeedModelCopyWith(
          _FeedModel value, $Res Function(_FeedModel) then) =
      __$FeedModelCopyWithImpl<$Res>;
  @override
  $Res call({User user, String imageAsB64});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$FeedModelCopyWithImpl<$Res> extends _$FeedModelCopyWithImpl<$Res>
    implements _$FeedModelCopyWith<$Res> {
  __$FeedModelCopyWithImpl(_FeedModel _value, $Res Function(_FeedModel) _then)
      : super(_value, (v) => _then(v as _FeedModel));

  @override
  _FeedModel get _value => super._value as _FeedModel;

  @override
  $Res call({
    Object? user = freezed,
    Object? imageAsB64 = freezed,
  }) {
    return _then(_FeedModel(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      imageAsB64: imageAsB64 == freezed
          ? _value.imageAsB64
          : imageAsB64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedModel implements _FeedModel {
  _$_FeedModel({required this.user, required this.imageAsB64});

  factory _$_FeedModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeedModelFromJson(json);

  @override
  final User user;
  @override
  final String imageAsB64;

  @override
  String toString() {
    return 'FeedModel(user: $user, imageAsB64: $imageAsB64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedModel &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.imageAsB64, imageAsB64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(imageAsB64));

  @JsonKey(ignore: true)
  @override
  _$FeedModelCopyWith<_FeedModel> get copyWith =>
      __$FeedModelCopyWithImpl<_FeedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedModelToJson(this);
  }
}

abstract class _FeedModel implements FeedModel {
  factory _FeedModel(
      {required final User user,
      required final String imageAsB64}) = _$_FeedModel;

  factory _FeedModel.fromJson(Map<String, dynamic> json) =
      _$_FeedModel.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  String get imageAsB64 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedModelCopyWith<_FeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
