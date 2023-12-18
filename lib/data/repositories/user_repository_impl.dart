import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:silk_app/data/constatnts.dart';
import 'package:silk_app/domain/entities/list_users/list_users.dart';
import 'package:silk_app/domain/entities/user/user.dart';
import 'package:silk_app/domain/repositories/abstract_user_repository.dart';

class UserRepository implements AbstractUserRepository {
  final Dio dio = Dio();
  @override
  Future<(User, int?)> getUser(String id) async {
    try {
      final response = await dio.get('$hostUrl/users/$id');
      if (response.statusCode == 200) {
        final data = response.data;
        return (User.fromJson(data), response.statusCode);
      } else {
        debugPrint('User $id: ${response.statusCode}');
        return (const User(), response.statusCode);
      }
    } catch (e) {
      debugPrint(e.toString());
      return (const User(), 404);
    }
  }

  @override
  Future<(ListUsers, int?)> getListUsers(int page) async {
    try {
      final response = await dio.get('$hostUrl/users?page=$page');
      if (response.statusCode == 200) {
        final data = response.data;
        return (ListUsers.fromJson(data), response.statusCode);
      } else {
        debugPrint('Page $page: ${response.statusCode}');
        return (const ListUsers(), response.statusCode);
      }
    } catch (e) {
      debugPrint(e.toString());
      return (const ListUsers(), 404);
    }
  }
}
