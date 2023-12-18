// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListUsers _$ListUsersFromJson(Map<String, dynamic> json) {
  return _ListUsers.fromJson(json);
}

/// @nodoc
mixin _$ListUsers {
  int? get page => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListUsersCopyWith<ListUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUsersCopyWith<$Res> {
  factory $ListUsersCopyWith(ListUsers value, $Res Function(ListUsers) then) =
      _$ListUsersCopyWithImpl<$Res, ListUsers>;
  @useResult
  $Res call(
      {int? page,
      int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<Data>? data});
}

/// @nodoc
class _$ListUsersCopyWithImpl<$Res, $Val extends ListUsers>
    implements $ListUsersCopyWith<$Res> {
  _$ListUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListUsersImplCopyWith<$Res>
    implements $ListUsersCopyWith<$Res> {
  factory _$$ListUsersImplCopyWith(
          _$ListUsersImpl value, $Res Function(_$ListUsersImpl) then) =
      __$$ListUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      int? perPage,
      int? total,
      @JsonKey(name: 'total_pages') int? totalPages,
      List<Data>? data});
}

/// @nodoc
class __$$ListUsersImplCopyWithImpl<$Res>
    extends _$ListUsersCopyWithImpl<$Res, _$ListUsersImpl>
    implements _$$ListUsersImplCopyWith<$Res> {
  __$$ListUsersImplCopyWithImpl(
      _$ListUsersImpl _value, $Res Function(_$ListUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ListUsersImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ListUsersImpl with DiagnosticableTreeMixin implements _ListUsers {
  const _$ListUsersImpl(
      {this.page,
      this.perPage,
      this.total,
      @JsonKey(name: 'total_pages') this.totalPages,
      final List<Data>? data})
      : _data = data;

  factory _$ListUsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListUsersImplFromJson(json);

  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListUsers(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListUsers'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListUsersImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListUsersImplCopyWith<_$ListUsersImpl> get copyWith =>
      __$$ListUsersImplCopyWithImpl<_$ListUsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListUsersImplToJson(
      this,
    );
  }
}

abstract class _ListUsers implements ListUsers {
  const factory _ListUsers(
      {final int? page,
      final int? perPage,
      final int? total,
      @JsonKey(name: 'total_pages') final int? totalPages,
      final List<Data>? data}) = _$ListUsersImpl;

  factory _ListUsers.fromJson(Map<String, dynamic> json) =
      _$ListUsersImpl.fromJson;

  @override
  int? get page;
  @override
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ListUsersImplCopyWith<_$ListUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
