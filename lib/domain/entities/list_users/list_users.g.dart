// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListUsersImpl _$$ListUsersImplFromJson(Map<String, dynamic> json) =>
    _$ListUsersImpl(
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
      totalPages: json['total_pages'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListUsersImplToJson(_$ListUsersImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };
