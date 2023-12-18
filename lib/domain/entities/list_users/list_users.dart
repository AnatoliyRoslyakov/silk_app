import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:silk_app/domain/entities/user/user.dart';

part 'list_users.freezed.dart';
part 'list_users.g.dart';

@freezed
class ListUsers with _$ListUsers {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ListUsers({
    int? page,
    int? perPage,
    int? total,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'total_pages') int? totalPages,
    List<Data>? data,
  }) = _ListUsers;

  factory ListUsers.fromJson(Map<String, Object?> json) =>
      _$ListUsersFromJson(json);
}
