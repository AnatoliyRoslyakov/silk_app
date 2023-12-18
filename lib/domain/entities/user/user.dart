import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    Data? data,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class Data with _$Data {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Data({
    required int? id,
    required String? email,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'first_name') required String? firstName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'last_name') required String? lastName,
    required String? avatar,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
